.class final Lcom/spotify/mobile/android/spotlets/common/persistence/h$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/common/persistence/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->d()Z
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1$1;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1$1;->a:Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/common/persistence/h$1;->b:Landroid/support/v4/app/Fragment;

    check-cast v0, Lcom/spotify/mobile/android/spotlets/common/persistence/d;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/common/persistence/d;->c()V

    return-void
.end method
