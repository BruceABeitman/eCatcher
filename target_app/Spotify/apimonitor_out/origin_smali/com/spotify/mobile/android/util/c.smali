.class public final Lcom/spotify/mobile/android/util/c;
.super Lcom/spotify/mobile/android/util/s;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Lcom/spotify/mobile/android/util/s;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/spotify/mobile/android/util/c;->a:Landroid/content/Context;

    new-instance v0, Lcom/spotify/mobile/android/util/x;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/x;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/c;->a(Lcom/spotify/mobile/android/util/ah;)V

    new-instance v0, Lcom/spotify/mobile/android/util/dn;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/dn;-><init>()V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/c;->a(Lcom/spotify/mobile/android/util/ah;)V

    new-instance v0, Lcom/spotify/mobile/android/util/ax;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/ax;-><init>()V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/c;->a(Lcom/spotify/mobile/android/util/ah;)V

    new-instance v0, Lcom/spotify/mobile/android/util/bq;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/bq;-><init>()V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/c;->a(Lcom/spotify/mobile/android/util/ah;)V

    new-instance v0, Lcom/spotify/mobile/android/util/bb;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/bb;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/util/c;->a(Lcom/spotify/mobile/android/util/ah;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/c;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
