const base = {
    get() {
        return {
            url : "http://localhost:8080/ssm697vf/",
            name: "ssm697vf",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/ssm697vf/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "医院体检预约系统"
        } 
    }
}
export default base
