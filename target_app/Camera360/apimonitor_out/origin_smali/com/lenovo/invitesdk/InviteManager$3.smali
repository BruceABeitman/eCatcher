.class synthetic Lcom/lenovo/invitesdk/InviteManager$3;
.super Ljava/lang/Object;
.source "InviteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/invitesdk/InviteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cd;->values()[Lcom/lenovo/anyshare/sdk/internal/cd;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/lenovo/invitesdk/InviteManager$3;->a:[I

    :try_start_9
    sget-object v0, Lcom/lenovo/invitesdk/InviteManager$3;->a:[I

    sget-object v1, Lcom/lenovo/anyshare/sdk/internal/cd;->c:Lcom/lenovo/anyshare/sdk/internal/cd;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cd;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
