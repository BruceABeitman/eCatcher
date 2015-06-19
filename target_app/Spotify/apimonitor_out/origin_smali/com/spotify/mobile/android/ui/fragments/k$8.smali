.class final Lcom/spotify/mobile/android/ui/fragments/k$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/k;->a(Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/j",
        "<",
        "Lcom/spotify/mobile/android/ui/fragments/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/l;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/spotify/mobile/android/ui/fragments/k;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/k;Lcom/spotify/mobile/android/ui/fragments/l;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/k$8;->d:Lcom/spotify/mobile/android/ui/fragments/k;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/fragments/k$8;->a:Lcom/spotify/mobile/android/ui/fragments/l;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/fragments/k$8;->b:Ljava/lang/Object;

    iput-object p4, p0, Lcom/spotify/mobile/android/ui/fragments/k$8;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/spotify/mobile/android/ui/fragments/m;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/k$8;->a:Lcom/spotify/mobile/android/ui/fragments/l;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/k$8;->b:Ljava/lang/Object;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/k$8;->c:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/fragments/l;->a(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
