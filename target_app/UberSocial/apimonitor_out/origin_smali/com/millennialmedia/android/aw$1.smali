.class final Lcom/millennialmedia/android/aw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/aw;->a([Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/millennialmedia/android/aw$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/millennialmedia/android/aw$1;->a:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_5
    if-ge v1, v4, :cond_2e

    aget-object v0, v3, v1

    const-string v5, "HttpGetRequest"

    const-string v6, "Logging event to: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_19
    new-instance v5, Lcom/millennialmedia/android/aw;

    invoke-direct {v5}, Lcom/millennialmedia/android/aw;-><init>()V

    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_25

    :goto_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    :catch_25
    move-exception v0

    const-string v5, "HttpGetRequest"

    const-string v6, "Logging request failed."

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21

    :cond_2e
    return-void
.end method
