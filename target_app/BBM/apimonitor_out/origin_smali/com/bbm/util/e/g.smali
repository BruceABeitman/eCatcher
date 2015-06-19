.class public final Lcom/bbm/util/e/g;
.super Lcom/google/zxing/client/android/d/j;
.source "WifiResultHandler.java"


# instance fields
.field private final c:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

.field private final d:Lcom/google/zxing/client/android/b/a/a;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;Lcom/google/zxing/client/a/q;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/client/android/d/j;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/a/q;)V

    iput-object p1, p0, Lcom/bbm/util/e/g;->c:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    new-instance v0, Lcom/google/zxing/client/android/b/a/b;

    invoke-direct {v0}, Lcom/google/zxing/client/android/b/a/b;-><init>()V

    invoke-virtual {v0}, Lcom/google/zxing/client/android/b/a/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/android/b/a/a;

    iput-object v0, p0, Lcom/bbm/util/e/g;->d:Lcom/google/zxing/client/android/b/a/a;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)I
    .registers 3

    const v0, 0x7f0e0162

    return v0
.end method

.method public final b()Ljava/lang/CharSequence;
    .registers 6

    const/16 v4, 0xa

    iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;

    check-cast v0, Lcom/google/zxing/client/a/ah;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Lcom/bbm/util/e/g;->c:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    const v3, 0x7f0e0785

    invoke-virtual {v2, v3}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/google/zxing/client/a/ah;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v2, p0, Lcom/bbm/util/e/g;->c:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    const v3, 0x7f0e0786

    invoke-virtual {v2, v3}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/zxing/client/a/ah;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/zxing/client/a/q;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .registers 7

    if-nez p1, :cond_35

    iget-object v0, p0, Lcom/google/zxing/client/android/d/j;->a:Lcom/google/zxing/client/a/q;

    check-cast v0, Lcom/google/zxing/client/a/ah;

    iget-object v1, p0, Lcom/google/zxing/client/android/d/j;->b:Landroid/app/Activity;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/google/zxing/client/android/d/j;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/zxing/client/android/d/j;->b:Landroid/app/Activity;

    const v4, 0x7f0e0784

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/util/e/g;->d:Lcom/google/zxing/client/android/b/a/a;

    new-instance v3, Lcom/google/zxing/client/android/e/b;

    invoke-direct {v3, v1}, Lcom/google/zxing/client/android/e/b;-><init>(Landroid/net/wifi/WifiManager;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/zxing/client/a/ah;

    const/4 v4, 0x0

    aput-object v0, v1, v4

    invoke-interface {v2, v3, v1}, Lcom/google/zxing/client/android/b/a/a;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/util/e/g;->c:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(J)V

    :cond_35
    return-void
.end method
