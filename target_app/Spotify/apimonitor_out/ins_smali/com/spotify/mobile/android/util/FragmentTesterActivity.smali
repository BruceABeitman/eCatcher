.class public Lcom/spotify/mobile/android/util/FragmentTesterActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/session/d;
.implements Lcom/spotify/mobile/android/service/session/f;
.implements Lcom/spotify/mobile/android/ui/activity/n;
.field private n:Lcom/spotify/mobile/android/service/session/e;
.field private o:Lcom/spotify/mobile/android/util/ba;
.field private p:Landroid/os/Bundle;
.field private q:Landroid/support/v4/app/Fragment;
.field private r:Lcom/spotify/mobile/android/ui/f;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V
const-class v0, Lcom/spotify/mobile/android/util/ba;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->b(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ba;
iput-object v0, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->o:Lcom/spotify/mobile/android/util/ba;
return-void
.end method
.method public final A_()V
.registers 1
return-void
.end method
.method public final a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
.registers 3
invoke-virtual {p0, p2}, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
.registers 2
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/activity/o;)V
.registers 2
return-void
.end method
.method public final c()V
.registers 1
return-void
.end method
.method public final d()Lcom/spotify/mobile/android/ui/f;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->r:Lcom/spotify/mobile/android/ui/f;
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/spotify/mobile/android/util/FragmentTesterActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v3, 0x7f0a021b
const/4 v2, -0x1
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setId(I)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->setContentView(Landroid/view/View;)V
new-instance v1, Lcom/spotify/mobile/android/ui/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->y_()Landroid/support/v4/app/r;
move-result-object v2
invoke-direct {v1, p0, v2, v0}, Lcom/spotify/mobile/android/ui/f;-><init>(Landroid/content/Context;Landroid/support/v4/app/r;Landroid/view/ViewGroup;)V
iput-object v1, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->r:Lcom/spotify/mobile/android/ui/f;
if-eqz p1, :cond_32
iget-object v0, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->r:Lcom/spotify/mobile/android/ui/f;
const-string v1, "navigation_manager"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/f;->a(Landroid/os/Bundle;)V
:cond_32
iget-object v0, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->o:Lcom/spotify/mobile/android/util/ba;
if-eqz v0, :cond_7c
iget-object v0, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->o:Lcom/spotify/mobile/android/util/ba;
invoke-interface {v0}, Lcom/spotify/mobile/android/util/ba;->a()Landroid/support/v4/app/Fragment;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->q:Landroid/support/v4/app/Fragment;
if-eqz v0, :cond_51
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->y_()Landroid/support/v4/app/r;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v1
const-string v2, "fragment_under_test"
invoke-virtual {v1, v3, v0, v2}, Landroid/support/v4/app/w;->a(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/w;->b()I
:cond_51
iget-object v0, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->o:Lcom/spotify/mobile/android/util/ba;
invoke-interface {v0}, Lcom/spotify/mobile/android/util/ba;->b()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_7c
:try_start_59
const-class v1, Landroid/support/v4/app/Fragment$SavedState;
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Landroid/os/Bundle;
aput-object v4, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/Fragment$SavedState;
iget-object v1, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->q:Landroid/support/v4/app/Fragment;
invoke-virtual {v1, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/support/v4/app/Fragment$SavedState;)V
:cond_7c
:try_end_7c
.catch Ljava/lang/Exception; {:try_start_59 .. :try_end_7c} :catch_7d
const-string v1, " - Lcom/spotify/mobile/android/util/FragmentTesterActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_7d
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "This shouldn\'t have happened ;)"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/spotify/mobile/android/util/FragmentTesterActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
if-nez p1, :cond_8
new-instance p1, Landroid/os/Bundle;
invoke-direct {p1}, Landroid/os/Bundle;-><init>()V
:cond_8
invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V
const-string v0, "android:support:fragments"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_6b
:try_start_13
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
const-string v3, "mActive"
invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
const/4 v2, 0x0
aget-object v0, v0, v2
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
const-string v3, "mSavedFragmentState"
invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
if-eqz v0, :cond_54
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V
move-object v0, v1
:goto_46
iput-object v0, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->p:Landroid/os/Bundle;
:try_end_48
.catch Ljava/lang/NoSuchFieldException; {:try_start_13 .. :try_end_48} :catch_56
.catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_48} :catch_5d
.catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_48} :catch_64
:goto_48
const-string v0, "navigation_manager"
iget-object v1, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->r:Lcom/spotify/mobile/android/ui/f;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/f;->d()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
const-string v1, " - Lcom/spotify/mobile/android/util/FragmentTesterActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_54
move-object v0, v1
goto :goto_46
:catch_56
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_5d
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_64
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_6b
iput-object v1, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->p:Landroid/os/Bundle;
goto :goto_48
.end method
.method public final w_()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final z_()Lcom/spotify/mobile/android/service/session/e;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/FragmentTesterActivity;->n:Lcom/spotify/mobile/android/service/session/e;
return-object v0
.end method