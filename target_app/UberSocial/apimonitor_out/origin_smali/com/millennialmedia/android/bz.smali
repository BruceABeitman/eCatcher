.class Lcom/millennialmedia/android/bz;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field c:Lcom/millennialmedia/android/MMActivity;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->b()V

    return-void
.end method

.method protected a(IILandroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/android/MMActivity;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/BroadcastReceiver;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected a(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMActivity;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setRequestedOrientation(I)V

    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->a(Z)V

    return-void
.end method

.method public final c(I)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setResult(I)V

    return-void
.end method

.method protected c(Landroid/os/Bundle;)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->h()V

    return-void
.end method

.method public d(I)V
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->setTheme(I)V

    return-void
.end method

.method protected e()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->e()V

    return-void
.end method

.method public final e(I)Z
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMActivity;->requestWindowFeature(I)Z

    move-result v0

    return v0
.end method

.method protected f()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->f()V

    return-void
.end method

.method protected g()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->a()V

    return-void
.end method

.method protected h()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->c()V

    return-void
.end method

.method public i()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->g()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected n()V
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->d()V

    return-void
.end method

.method public o()Landroid/content/Intent;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public p()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public q()Landroid/view/Window;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public r()Landroid/content/ContentResolver;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public s()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/android/bz;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
