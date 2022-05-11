<template>
<div  >
 <el-form class="login-container" label-position="left"
           label-width="0px" >
    <h3 class="login_title">考勤系统登录</h3>
    <el-form-item prop="account">
      <el-input type="text" v-model="loginForm.username" auto-complete="off" placeholder="账号"></el-input>
    </el-form-item>
    <el-form-item prop="checkPass">
      <el-input type="password" v-model="loginForm.password" auto-complete="off" placeholder="密码"></el-input>
    </el-form-item>
    <el-form-item style="width: 100%">
      <el-button type="primary" @click.native.prevent="submitClick" style="width: 100%">登录</el-button>
    </el-form-item>
  </el-form>
</div>
  
</template>
<script>
  export default{
    data(){
      return {
       loginForm:{
         username:'',
         password:''
       }
      }
    },
    methods: {
      submitClick: function () {
        var _this = this;
        if (_this.loginForm.username == ''||_this.loginForm.password == '') {
          this.$alert('账号或密码不能为空', '提示', {
            confirmButtonText: '确定',
          });
        }else{
          _this.$http.get('/login')
          _this.$http.get('/login/'+_this.loginForm.username+'/'+_this.loginForm.password).then(function (response) {
            if (response.data!='') {
              _this.$alert('登录成功', '提示', {
                confirmButtonText: '确定',
              });
              window.sessionStorage.setItem('empId',response.data.empId);
              window.sessionStorage.setItem('account',response.data.account);
              window.sessionStorage.setItem('name',response.data.name);
              window.sessionStorage.setItem('role',response.data.role); 
              _this.$router.replace({path: '/home'});   
            }else{
              _this.$alert('账号或密码错误', '提示', {
                confirmButtonText: '确定',
              });
            }
          });
        }
      }
    }
  }
</script>
<style>
  .back{
      background-image: url('https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fnimg.ws.126.net%2F%3Furl%3Dhttp%253A%252F%252Fdingyue.ws.126.net%252F2021%252F0627%252F790e81c6j00qvbyrj0015c000n100h2c.jpg%26thumbnail%3D650x2147483647%26quality%3D80%26type%3Djpg&refer=http%3A%2F%2Fnimg.ws.126.net&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1654859419&t=f2e5ec48aa2dace35785e7cce129ca33');
      /* background-repeat: no-repeat;
      background-position: center;
      background-attachment: fixed;
      background-size: cover;
      -webkit-background-size: cover;
      -moz-background-size: cover;
      -o-background-size: cover; */

    }
  .login-container {
    border-radius: 15px;
    background-clip: padding-box;
    margin: auto auto;
    width: 350px;
    padding: 35px 35px 15px 35px;
    background: #fff;
    border: 1px solid #eaeaea;
    box-shadow: 0 0 25px #cac6c6;
  }

  .login_title {
    margin: 0px auto 40px auto;
    text-align: center;
    color: #505458;
  }

  .login_remember {
    margin: 0px 0px 35px 0px;
    text-align: left;
  }
</style>
