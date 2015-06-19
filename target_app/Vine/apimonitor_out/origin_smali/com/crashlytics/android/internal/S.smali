.class final Lcom/crashlytics/android/internal/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/O;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/O;)V
    .registers 2

    iput-object p1, p0, Lcom/crashlytics/android/internal/S;->a:Lcom/crashlytics/android/internal/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/S;->a:Lcom/crashlytics/android/internal/O;

    iget-object v0, v0, Lcom/crashlytics/android/internal/O;->a:Lcom/crashlytics/android/internal/U;

    invoke-interface {v0}, Lcom/crashlytics/android/internal/U;->a()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    :goto_7
    return-void

    :catch_8
    move-exception v0

    const-string v0, "Crashlytics failed to send analytics files."

    invoke-static {v0}, Lcom/crashlytics/android/internal/ab;->d(Ljava/lang/String;)V

    goto :goto_7
.end method
