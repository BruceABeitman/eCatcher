.class final Lcom/spotify/mobile/android/provider/ac$1;
.super Landroid/support/v4/c/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/provider/ac;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/c/f",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/spotify/mobile/android/provider/ad;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/provider/ac;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/provider/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/provider/ac$1;->a:Lcom/spotify/mobile/android/provider/ac;

    invoke-direct {p0}, Landroid/support/v4/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic b(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/spotify/mobile/android/provider/ad;

    invoke-virtual {p1}, Lcom/spotify/mobile/android/provider/ad;->a()I

    move-result v0

    return v0
.end method
