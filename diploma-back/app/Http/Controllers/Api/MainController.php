<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\DB;
use App\Models\User;

class MainController extends Controller
{
    public function addPost(Request $request) {
        $yourToken = request()->bearerToken();
        $token = \Laravel\Sanctum\PersonalAccessToken::findToken($yourToken);
        $user_id = $token->tokenable;
        $user = User::findOrFail($user_id->id);

        $file = $request->file;
        $time_save = time();
        $file->storeAs(
            '/public/uploads',
            $time_save . str_replace(' ', '', $file->getClientOriginalName())
        );
        $file_url = "http://127.0.0.1:8000/storage/uploads/" . $time_save . $file->getClientOriginalName();
        $file_url = str_replace(' ', '', $file_url);

        $post = Post::create([
            'img' => $file_url,
            'name' => $request->name
        ]);

        $id_albom = DB::select("SELECT * FROM `alboms` WHERE alboms.id_user = $user->id");
        $id_albom = $id_albom[0]->id;
        DB::insert("INSERT INTO `alboms_posts` (`id_albom`, `id_posts`) VALUES ('$id_albom', '$post->id')");

        $post->save();

        //сюда прокинь строку категорий, формата "категория,категория1,категория2" где категории, это их id. У категории есть id и имя. сюда кидай id
        $arr_category = $request->category;
        $arr_category = explode(",", $arr_category);

        for($i = 0; $i < count($arr_category); $i++) {
            DB::insert("INSERT INTO `posts_category` (`id_posts`, `id_category`) VALUES ('$post->id', '$arr_category[$i]')");
        }

        //сюда прокинь строку ключевых слов формата "слово,слово1,слово2" где слово, это их id. У ключевых слов есть id и имя. сюда кидай id
        $arr_key_words = $request->key_words;
        $arr_key_words = explode(",", $arr_key_words);

        for($i = 0; $i < count($arr_key_words); $i++) {
            DB::insert("INSERT INTO `posts_key_words` (`id_posts`, `id_words`) VALUES ('$post->id', '$arr_key_words[$i]')");
        }

        return 'Запись создана';
    }

    public function allPostsUser() {
        $yourToken = request()->bearerToken();
        $token = \Laravel\Sanctum\PersonalAccessToken::findToken($yourToken);
        $user_id = $token->tokenable;
        $user = User::findOrFail($user_id->id);

        $allPosts = DB::select("select posts.id as 'post_id', posts.name as 'post_name', posts.text as 'text', posts.img as 'img', GROUP_CONCAT(category.name) as 'category',  
        GROUP_CONCAT(key_words.name) as 'key_words' FROM posts JOIN alboms_posts on alboms_posts.id_posts = posts.id JOIN alboms on alboms.id = alboms_posts.id_albom JOIN users on users.id = alboms.id_user 
        JOIN posts_category on posts_category.id_posts = posts.id JOIN category on category.id = posts_category.id_category 
        JOIN posts_key_words on posts_key_words.id_posts = posts.id JOIN key_words on key_words.id = posts_key_words.id_words and users.id = $user->id");

        return $allPosts;
    }

    public function UpdatedataUser(Request $request) {
        $yourToken = request()->bearerToken();
        $token = \Laravel\Sanctum\PersonalAccessToken::findToken($yourToken);
        $user_id = $token->tokenable;
        $user = User::findOrFail($user_id->id);

        $file = $request->file;
        $time_save = time();
        $file->storeAs(
            '/public/uploads',
            $time_save . str_replace(' ', '', $file->getClientOriginalName())
        );
        $file_url = "http://127.0.0.1:8000/storage/uploads/" . $time_save . $file->getClientOriginalName();
        $file_url = str_replace(' ', '', $file_url);

        $name = $request->name;

        DB::update("UPDATE `users` SET `name`='$name', `img`='$file_url' WHERE users.id = $user->id ");

        return 'Обновили данные';
    }

    public function deletePost(Request $request, $id){
        DB::delete("DELETE FROM `posts` WHERE posts.id = $id");

        return 'Пост удалён';
    }

    public function ipdatePost(Request $request, $id){

        $file = $request->file;
        $time_save = time();
        $file->storeAs(
            '/public/uploads',
            $time_save . str_replace(' ', '', $file->getClientOriginalName())
        );
        $file_url = "http://127.0.0.1:8000/storage/uploads/" . $time_save . $file->getClientOriginalName();
        $file_url = str_replace(' ', '', $file_url);

        $text = $request->text;
        $name = $request->name;

        DB::update("UPDATE `posts` SET `name` = '$name', `text`='$text',`img`='$file_url' WHERE posts.id = $id");

        DB::delete("DELETE FROM `posts_category` WHERE posts_category.id_posts = $id");
         //сюда прокинь строку категорий, формата "категория,категория1,категория2" где категории, это их id. У категории есть id и имя. сюда кидай id
         $arr_category = $request->category;
         $arr_category = explode(",", $arr_category);
 
         for($i = 0; $i < count($arr_category); $i++) {
             DB::insert("INSERT INTO `posts_category` (`id_posts`, `id_category`) VALUES ('$id', '$arr_category[$i]')");
         }
 

         DB::delete("DELETE FROM `posts_key_words` WHERE posts_key_words.id_posts = $id");
         //сюда прокинь строку ключевых слов формата "слово,слово1,слово2" где слово, это их id. У ключевых слов есть id и имя. сюда кидай id
         $arr_key_words = $request->key_words;
         $arr_key_words = explode(",", $arr_key_words);
 
         for($i = 0; $i < count($arr_key_words); $i++) {
             DB::insert("INSERT INTO `posts_category` (`id_posts`, `id_words`) VALUES ('$id', '$arr_key_words[$i]')");
         }

        return 'Пост Обновлён';
    }

    public function allCategory() {
        $category = DB::select("SELECT * FROM `category`");

        return  $category;
    }

    public function allKeyWords() {
        $words = DB::select("SELECT * FROM `key_words`");

        return  $words;
    }

    public function allPosts() {
        $posts = DB::select("SELECT * FROM `posts`");

        return $posts;
    }

    public function allUsers() {
        $users = DB::select("SELECT * FROM `users`");

        return $users;
    }

    public function allPostsWhereCategory() {
        $posts = DB::select("SELECT posts.* FROM posts JOIN posts_category on posts_category.id_posts = posts.id and posts_category.id_category = 1");

        return $posts;
    }

    public function allCommentsPost(Request $request, $id) {
        $all_comments = DB::select("SELECT comments.text as 'comments_text',users.id as 'user_id', users.name as 'user_name', users.img as 'users_img' FROM comments JOIN users on users.id = comments.id_user and comments.id_posts = $id");

        return $all_comments;
    }

    public function addComments(Request $request) {
        $yourToken = request()->bearerToken();
        $token = \Laravel\Sanctum\PersonalAccessToken::findToken($yourToken);
        $user_id = $token->tokenable;
        $user = User::findOrFail($user_id->id);

        $text_comment = $request->text;
        $id_post = $request->id_post;

        DB::insert("INSERT INTO `comments`(`text`, `id_posts`, `id_user`) VALUES ('$text_comment','$id_post','$user->id')");

        return "Комментарий добавлен";
    }

    public function getPost(Request $request, $id) {
        $post_info = DB::select("select posts.id as 'post_id', posts.name as 'post_name', posts.text as 'text', posts.img as 'img', GROUP_CONCAT(category.name) as 'category',  
        GROUP_CONCAT(key_words.name) as 'key_words' FROM posts JOIN alboms_posts on alboms_posts.id_posts = posts.id JOIN alboms on alboms.id = alboms_posts.id_albom JOIN users on users.id = alboms.id_user 
        JOIN posts_category on posts_category.id_posts = posts.id JOIN category on category.id = posts_category.id_category 
        JOIN posts_key_words on posts_key_words.id_posts = posts.id JOIN key_words on key_words.id = posts_key_words.id_words and posts.id = $id");

        return $post_info;
    }

    public function addCategory(Request $request) {
        $name = $request->name;

        DB::insert("INSERT INTO `category` (`name`) VALUES ('$name')");

        return "Категория добавлена";
    }

    public function addKeyWords(Request $request) {
        $name = $request->name;

        DB::insert("INSERT INTO `key_words` (`name`) VALUES ('$name')");

        return "Ключевое слово добавлено";
    }

    public function updateKeyWords(Request $request) {
        $id_keyWords = $request->id;
        $name = $request->name;

        DB::update("UPDATE `key_words` SET `name`='$name' WHERE key_words.id = $id_keyWords");
    }

    public function banUser(Request $request) {
        $id_user = $request->id_user;

        DB::update("UPDATE `users` SET `ban`='1' WHERE users.id =$id_user");
    }

    public function forbidden_words() {
        $forbidden_words = DB::select("SELECT * FROM `forbidden_words`");

        return $forbidden_words;
    }

    public function savePost(Request $request) {
        $yourToken = request()->bearerToken();
        $token = \Laravel\Sanctum\PersonalAccessToken::findToken($yourToken);
        $user_id = $token->tokenable;
        $user = User::findOrFail($user_id->id);
        $id_albom = DB::select("SELECT * FROM `alboms` WHERE alboms.id_user = $user->id");
        $id_albom = $id_albom[0]->id;
        $post = Post::create([
            'text' => $request->text,
            'img' => $request->img,
            'name' => $request->name
        ]);

        DB::insert("INSERT INTO `alboms_posts` (`id_albom`, `id_posts`) VALUES ('$id_albom', '$post->id')");
    }
}
