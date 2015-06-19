.class final Lcom/instagram/android/l/c/h;
.super Ljava/lang/Object;
.source "UserListFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:[Ljava/lang/CharSequence;
.field final synthetic c:Lcom/instagram/android/l/c/a;
.method constructor <init>(Lcom/instagram/android/l/c/a;Ljava/lang/String;[Ljava/lang/CharSequence;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/l/c/h;->c:Lcom/instagram/android/l/c/a;
iput-object p2, p0, Lcom/instagram/android/l/c/h;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/android/l/c/h;->b:[Ljava/lang/CharSequence;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/l/c/h; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/l/c/h;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/instagram/android/l/c/h;->b:[Ljava/lang/CharSequence;
aget-object v1, v1, p2
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/l/c/h;->c:Lcom/instagram/android/l/c/a;
invoke-static {v0}, Lcom/instagram/android/l/c/a;->c(Lcom/instagram/android/l/c/a;)V
:cond_11
const-string v1, " - Lcom/instagram/android/l/c/h; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method