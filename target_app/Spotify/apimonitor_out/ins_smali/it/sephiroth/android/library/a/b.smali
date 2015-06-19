.class public abstract Lit/sephiroth/android/library/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field protected a:Landroid/view/View;
.method protected constructor <init>(Landroid/view/View;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lit/sephiroth/android/library/a/b;->a:Landroid/view/View;
const-string v0, "ViewHelper"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public abstract a(I)V
.end method
.method public abstract a(Ljava/lang/Runnable;)V
.end method
.method public abstract a()Z
.end method