.class public final Lcom/spotify/mobile/android/util/dx;
.super Lcom/spotify/mobile/android/util/dw;
.source "SourceFile"


# instance fields
.field private c:Lcom/spotify/mobile/android/ui/actions/a;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/util/dw;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/util/dx;->c:Lcom/spotify/mobile/android/ui/actions/a;

    return-void
.end method


# virtual methods
.method protected final a(J)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dx;->c:Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/util/dx;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/util/dx;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v0, v1, p1, p2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;J)V

    return-void
.end method
