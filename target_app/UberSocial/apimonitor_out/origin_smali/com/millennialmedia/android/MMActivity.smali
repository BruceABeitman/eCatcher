.class public Lcom/millennialmedia/android/MMActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "MMActivity"


# instance fields
.field a:J

.field b:Landroid/view/GestureDetector;

.field private c:Lcom/millennialmedia/android/bz;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method a(IILandroid/content/Intent;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method a(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method a(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method b()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method c()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method c(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method d()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->b:Landroid/view/GestureDetector;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_9
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bz;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_13
    return v0

    :cond_14
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_13
.end method

.method e()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method f()V
    .registers 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public finish()V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bz;->d()V

    :goto_9
    return-void

    :cond_a
    iget-wide v0, p0, Lcom/millennialmedia/android/MMActivity;->a:J

    invoke-static {v0, v1}, Lcom/millennialmedia/android/bs;->a(J)Lcom/millennialmedia/android/bp;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->e(Lcom/millennialmedia/android/bp;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_9
.end method

.method g()Ljava/lang/Object;
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .registers 3

    iget-wide v0, p0, Lcom/millennialmedia/android/MMActivity;->a:J

    invoke-static {v0, v1}, Lcom/millennialmedia/android/bs;->a(J)Lcom/millennialmedia/android/bp;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->e(Lcom/millennialmedia/android/bp;)V

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected i()Lcom/millennialmedia/android/bz;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/android/bz;->a(IILandroid/content/Intent;)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bz;->a(Landroid/content/res/Configuration;)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_9
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "internalId"

    const-wide/16 v3, -0x4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/MMActivity;->a:J

    :try_start_12
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "class"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/bz;

    iput-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    iput-object p0, v0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bz;->a(Landroid/os/Bundle;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/android/bn;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/bn;-><init>(Lcom/millennialmedia/android/MMActivity;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMActivity;->b:Landroid/view/GestureDetector;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_41} :catch_42

    :goto_41
    return-void

    :catch_42
    move-exception v0

    const-string v2, "MMActivity"

    const-string v3, "Could not start activity for %s. "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->finish()V

    goto :goto_41
.end method

.method protected onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bz;->g()V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_9
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/bz;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bz;->f()V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    goto :goto_9
.end method

.method protected onRestart()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bz;->n()V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    goto :goto_9
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bz;->c(Landroid/os/Bundle;)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_9
.end method

.method protected onResume()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bz;->e()V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto :goto_9
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bz;->i()Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bz;->b(Landroid/os/Bundle;)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_9
.end method

.method protected onStart()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bz;->a()V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    goto :goto_9
.end method

.method protected onStop()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0}, Lcom/millennialmedia/android/bz;->h()V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    goto :goto_9
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/bz;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/bz;->b(Z)V

    :goto_9
    return-void

    :cond_a
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_9
.end method
