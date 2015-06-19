.class final Lcom/spotify/mobile/android/util/d/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/d/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/util/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/util/d/a;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/util/d/a;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/util/d/a$1;->a:Lcom/spotify/mobile/android/util/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->n:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    return v0
.end method
