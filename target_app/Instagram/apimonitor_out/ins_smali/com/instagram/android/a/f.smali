.class final Lcom/instagram/android/a/f;
.super Landroid/os/AsyncTask;
.source "NearbyVenuesAdapter.java"
.field final synthetic a:Ljava/util/List;
.field final synthetic b:Lcom/instagram/android/a/d;
.method constructor <init>(Lcom/instagram/android/a/d;Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/a/f;->b:Lcom/instagram/android/a/d;
iput-object p2, p0, Lcom/instagram/android/a/f;->a:Ljava/util/List;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method private varargs a()Ljava/lang/Void;
.registers 3
iget-object v0, p0, Lcom/instagram/android/a/f;->b:Lcom/instagram/android/a/d;
iget-object v1, p0, Lcom/instagram/android/a/f;->a:Ljava/util/List;
invoke-static {v0, v1}, Lcom/instagram/android/a/d;->a(Lcom/instagram/android/a/d;Ljava/util/List;)V
const/4 v0, 0x0
return-object v0
.end method
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/instagram/android/a/f;->a()Ljava/lang/Void;
move-result-object v0
return-object v0
.end method