.class final Lcom/spotify/mobile/android/ui/fragments/logic/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/connections/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/fragments/logic/c;->v_()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/logic/c;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/logic/c;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/service/ConnectDevice;",
            ">;",
            "Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/c;->q()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/c;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/c;->a(Lcom/spotify/mobile/android/ui/fragments/logic/c;)Z

    move-result v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    if-eqz p1, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/c;->b(Lcom/spotify/mobile/android/ui/fragments/logic/c;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v1

    invoke-static {p1}, Lcom/spotify/mobile/android/util/y;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/y;->a(Lcom/spotify/mobile/android/util/cx;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/c;->a(Lcom/spotify/mobile/android/ui/fragments/logic/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/logic/c$1;->a:Lcom/spotify/mobile/android/ui/fragments/logic/c;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/c;->c(Lcom/spotify/mobile/android/ui/fragments/logic/c;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/logic/c;->b(Lcom/spotify/mobile/android/ui/fragments/logic/c;Ljava/util/ArrayList;)V

    goto :goto_10
.end method
