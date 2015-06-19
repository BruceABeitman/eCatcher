.class Lcom/millennialmedia/android/di;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lcom/millennialmedia/android/di$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/di$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/dk;->a(Ljava/lang/Runnable;)V

    return-void
.end method
