.class public final Lcom/spotify/mobile/android/e/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/spotify/mobile/android/service/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/e/m;->a:Landroid/content/Context;

    new-instance v0, Lcom/spotify/mobile/android/service/w;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/service/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/e/m;->b:Lcom/spotify/mobile/android/service/w;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b()Lcom/spotify/mobile/android/service/w;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/e/m;->b:Lcom/spotify/mobile/android/service/w;

    return-object v0
.end method
