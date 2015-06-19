.class final Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$7;
.super Lcom/spotify/mobile/android/ui/fragments/logic/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/ui/fragments/logic/b",
        "<",
        "Lcom/spotify/mobile/android/ui/fragments/logic/s;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/s;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;-><init>(Ljava/lang/String;Lcom/spotify/mobile/android/ui/fragments/logic/w;Z)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment$7;->a(Ljava/io/Serializable;)V

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_4
.end method
