.class final Lcom/spotify/mobile/android/e/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/e/s;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/e/s;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/e/s;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/e/s$1;->a:Lcom/spotify/mobile/android/e/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/s$1;->a:Lcom/spotify/mobile/android/e/s;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/s;->c()V

    return-void
.end method
