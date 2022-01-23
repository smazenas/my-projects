const app=Vue.createApp({
    data(){
        return{
        first:"jhon",
        last:"doe",
        gender:"male",
        picture:"https://randomuser.me/api/portraits/men/10.jpg"
        }
    },
    methods:{
        async getuser(){
            const res=await fetch("https://randomuser.me/api")
            //const data=await res.json() gives results array with a single item (user) so
            //instead of putting it in data we destructure results and we pull that out
            const {results}=await res.json()
            console.log(results)
            this.first=results[0].name.first
            this.last=results[0].name.last
            this.gender=results[0].gender
            this.picture=results[0].picture.large
            }
        }
    })
app.mount("#app")