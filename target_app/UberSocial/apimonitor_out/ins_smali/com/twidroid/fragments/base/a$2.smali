.class  Lcom/twidroid/fragments/base/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/handmark/pulltorefresh/library/i;
.field final synthetic a:Lcom/twidroid/fragments/base/a;
.method constructor <init>(Lcom/twidroid/fragments/base/a;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/base/a$2;->a:Lcom/twidroid/fragments/base/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/o;Lcom/handmark/pulltorefresh/library/g;)V
.registers 6
sget-object v0, Lcom/twidroid/fragments/base/a$3;->a:[I
invoke-virtual {p2}, Lcom/handmark/pulltorefresh/library/o;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_44
:goto_b
:cond_b
return-void
:pswitch_c
iget-object v0, p0, Lcom/twidroid/fragments/base/a$2;->a:Lcom/twidroid/fragments/base/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/twidroid/fragments/base/a$2;->a:Lcom/twidroid/fragments/base/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->d()V
goto :goto_b
:pswitch_28
iget-object v0, p0, Lcom/twidroid/fragments/base/a$2;->a:Lcom/twidroid/fragments/base/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/twidroid/fragments/base/a$2;->a:Lcom/twidroid/fragments/base/a;
invoke-virtual {v0}, Lcom/twidroid/fragments/base/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->b()Lcom/twidroid/ui/themes/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a/b;->e()V
goto :goto_b
:pswitch_data_44
.packed-switch 0x1
:pswitch_c
:pswitch_28
.end packed-switch
.end method