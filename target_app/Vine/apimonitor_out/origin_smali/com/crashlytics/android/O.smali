.class final Lcom/crashlytics/android/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/crashlytics/android/v;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/v;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/O;->a:Lcom/crashlytics/android/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/O;->a:Lcom/crashlytics/android/v;

    invoke-static {v0}, Lcom/crashlytics/android/v;->a(Lcom/crashlytics/android/v;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/crashlytics/android/O;->a:Lcom/crashlytics/android/v;

    invoke-static {v0}, Lcom/crashlytics/android/v;->b(Lcom/crashlytics/android/v;)V

    iget-object v0, p0, Lcom/crashlytics/android/O;->a:Lcom/crashlytics/android/v;

    invoke-static {v0}, Lcom/crashlytics/android/v;->c(Lcom/crashlytics/android/v;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1b
.end method
