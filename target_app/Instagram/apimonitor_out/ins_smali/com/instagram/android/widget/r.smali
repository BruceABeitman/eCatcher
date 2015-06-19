.class public final Lcom/instagram/android/widget/r;
.super Ljava/lang/Object;
.source "ShareActivityUtil.java"
.method private static a(I)Lcom/instagram/android/widget/x;
.registers 2
packed-switch p0, :pswitch_data_14
const/4 v0, 0x0
:goto_4
return-object v0
:pswitch_5
sget-object v0, Lcom/instagram/android/widget/x;->b:Lcom/instagram/android/widget/x;
goto :goto_4
:pswitch_8
sget-object v0, Lcom/instagram/android/widget/x;->c:Lcom/instagram/android/widget/x;
goto :goto_4
:pswitch_b
sget-object v0, Lcom/instagram/android/widget/x;->d:Lcom/instagram/android/widget/x;
goto :goto_4
:pswitch_e
sget-object v0, Lcom/instagram/android/widget/x;->e:Lcom/instagram/android/widget/x;
goto :goto_4
:pswitch_11
sget-object v0, Lcom/instagram/android/widget/x;->f:Lcom/instagram/android/widget/x;
goto :goto_4
:pswitch_data_14
.packed-switch 0x1
:pswitch_5
:pswitch_8
:pswitch_b
:pswitch_e
:pswitch_11
.end packed-switch
.end method
.method public static a(IILandroid/content/Intent;Lcom/facebook/b/e;Lcom/instagram/model/a/b;)V
.registers 7
const/4 v0, -0x1
if-ne p1, v0, :cond_13
invoke-static {p0}, Lcom/instagram/android/widget/r;->a(I)Lcom/instagram/android/widget/x;
move-result-object v0
if-nez v0, :cond_14
invoke-static {}, Lcom/instagram/share/b/a;->a()Lcom/facebook/b/b;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/facebook/b/b;->a(Lcom/facebook/b/e;)V
invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/b/b;->a(IILandroid/content/Intent;)V
:cond_13
:goto_13
return-void
:cond_14
invoke-virtual {v0}, Lcom/instagram/android/widget/x;->c()Z
move-result v1
if-eqz v1, :cond_13
const/4 v1, 0x1
invoke-virtual {v0, p4, v1}, Lcom/instagram/android/widget/x;->a(Lcom/instagram/model/a/b;Z)V
goto :goto_13
.end method