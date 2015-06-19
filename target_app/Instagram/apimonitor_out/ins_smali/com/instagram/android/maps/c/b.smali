.class final Lcom/instagram/android/maps/c/b;
.super Ljava/lang/Object;
.source "PhotoMapEditDoneListener.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/maps/c/a;
.method private constructor <init>(Lcom/instagram/android/maps/c/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/c/b;->a:Lcom/instagram/android/maps/c/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/maps/c/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/maps/c/b;-><init>(Lcom/instagram/android/maps/c/a;)V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/maps/c/b; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
new-instance v0, Lcom/instagram/android/maps/c/c;
iget-object v1, p0, Lcom/instagram/android/maps/c/b;->a:Lcom/instagram/android/maps/c/a;
invoke-static {v1}, Lcom/instagram/android/maps/c/a;->a(Lcom/instagram/android/maps/c/a;)Landroid/support/v4/app/k;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/maps/c/b;->a:Lcom/instagram/android/maps/c/a;
invoke-static {v2}, Lcom/instagram/android/maps/c/a;->b(Lcom/instagram/android/maps/c/a;)I
move-result v2
invoke-direct {v0, v1, v2}, Lcom/instagram/android/maps/c/c;-><init>(Landroid/support/v4/app/k;I)V
invoke-virtual {v0}, Lcom/instagram/android/maps/c/c;->a()V
const-string v1, " - Lcom/instagram/android/maps/c/b; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method