.class final Lit/sephiroth/android/library/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lit/sephiroth/android/library/widget/AdapterView;
.method private constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;)V
.registers 2
iput-object p1, p0, Lit/sephiroth/android/library/widget/r;->a:Lit/sephiroth/android/library/widget/AdapterView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;B)V
.registers 3
invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/r;-><init>(Lit/sephiroth/android/library/widget/AdapterView;)V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lit/sephiroth/android/library/widget/r;->a:Lit/sephiroth/android/library/widget/AdapterView;
iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AdapterView;->ai:Z
if-eqz v0, :cond_14
iget-object v0, p0, Lit/sephiroth/android/library/widget/r;->a:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->q()Landroid/widget/Adapter;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lit/sephiroth/android/library/widget/r;->a:Lit/sephiroth/android/library/widget/AdapterView;
invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/AdapterView;->post(Ljava/lang/Runnable;)Z
:cond_13
:goto_13
return-void
:cond_14
iget-object v0, p0, Lit/sephiroth/android/library/widget/r;->a:Lit/sephiroth/android/library/widget/AdapterView;
invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->b(Lit/sephiroth/android/library/widget/AdapterView;)V
iget-object v0, p0, Lit/sephiroth/android/library/widget/r;->a:Lit/sephiroth/android/library/widget/AdapterView;
invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->c(Lit/sephiroth/android/library/widget/AdapterView;)V
goto :goto_13
.end method