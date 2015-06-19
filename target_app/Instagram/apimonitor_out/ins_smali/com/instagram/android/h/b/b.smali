.class final Lcom/instagram/android/h/b/b;
.super Lcom/instagram/api/j/a;
.source "UserBlockRequestHelper.java"
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/instagram/user/c/a;
.method constructor <init>(Landroid/content/Context;Lcom/instagram/user/c/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/h/b/b;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/android/h/b/b;->b:Lcom/instagram/user/c/a;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method private c()V
.registers 4
iget-object v1, p0, Lcom/instagram/android/h/b/b;->a:Landroid/content/Context;
iget-object v0, p0, Lcom/instagram/android/h/b/b;->b:Lcom/instagram/user/c/a;
invoke-virtual {v0}, Lcom/instagram/user/c/a;->v()Z
move-result v0
if-eqz v0, :cond_15
sget v0, Lcom/facebook/az;->user_blocked:I
:goto_c
const/4 v2, 0x0
invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
:cond_15
sget v0, Lcom/facebook/az;->user_unblocked:I
goto :goto_c
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 9
const/4 v6, 0x0
iget-object v0, p0, Lcom/instagram/android/h/b/b;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/instagram/android/h/b/b;->a:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/az;->x_problems:I
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/instagram/android/h/b/b;->a:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
sget v5, Lcom/facebook/az;->instagram:I
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v6
invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/h/b/b;->c()V
return-void
.end method