.class public Lcom/spotify/mobile/android/spotlets/video/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/f;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/ui/page/DebugFlag;->b:Lcom/spotify/mobile/android/ui/page/DebugFlag;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/f;->a:Landroid/content/Context;

    return-void
.end method
