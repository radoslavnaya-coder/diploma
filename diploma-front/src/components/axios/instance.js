import axios from "axios"

const token = localStorage.getItem('token')
export const instance = axios.create({
  baseURL: 'http://127.0.0.1:8000/api/',
})
axios.defaults.headers.common = { Authorization: `Bearer ` + token }