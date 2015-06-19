.class public final enum Lcom/instagram/user/follow/h;
.super Ljava/lang/Enum;
.source "FollowButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/user/follow/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/instagram/user/follow/h;

.field public static final enum b:Lcom/instagram/user/follow/h;

.field private static final synthetic g:[Lcom/instagram/user/follow/h;


# instance fields
.field private c:Z

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/instagram/user/follow/h;

    const-string v1, "MEDIUM"

    sget v4, Lcom/facebook/au;->following_avatar:I

    sget v5, Lcom/facebook/au;->requested_avatar:I

    sget v6, Lcom/facebook/au;->follow_avatar:I

    move v3, v2

    invoke-direct/range {v0 .. v6}, Lcom/instagram/user/follow/h;-><init>(Ljava/lang/String;IZIII)V

    sput-object v0, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    new-instance v3, Lcom/instagram/user/follow/h;

    const-string v4, "LARGE"

    sget v7, Lcom/facebook/au;->following_icon:I

    sget v8, Lcom/facebook/au;->requested_icon:I

    sget v9, Lcom/facebook/au;->follow_icon:I

    move v5, v10

    move v6, v10

    invoke-direct/range {v3 .. v9}, Lcom/instagram/user/follow/h;-><init>(Ljava/lang/String;IZIII)V

    sput-object v3, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/instagram/user/follow/h;

    sget-object v1, Lcom/instagram/user/follow/h;->a:Lcom/instagram/user/follow/h;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/user/follow/h;->b:Lcom/instagram/user/follow/h;

    aput-object v1, v0, v10

    sput-object v0, Lcom/instagram/user/follow/h;->g:[Lcom/instagram/user/follow/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZIII)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/instagram/user/follow/h;->c:Z

    iput p4, p0, Lcom/instagram/user/follow/h;->d:I

    iput p5, p0, Lcom/instagram/user/follow/h;->e:I

    iput p6, p0, Lcom/instagram/user/follow/h;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/user/follow/h;
    .registers 2

    const-class v0, Lcom/instagram/user/follow/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/follow/h;

    return-object v0
.end method

.method public static values()[Lcom/instagram/user/follow/h;
    .registers 1

    sget-object v0, Lcom/instagram/user/follow/h;->g:[Lcom/instagram/user/follow/h;

    invoke-virtual {v0}, [Lcom/instagram/user/follow/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/user/follow/h;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/c;)I
    .registers 4

    sget-object v0, Lcom/instagram/user/follow/f;->a:[I

    invoke-virtual {p1}, Lcom/instagram/user/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    const/4 v0, 0x0

    :goto_c
    return v0

    :pswitch_d
    iget v0, p0, Lcom/instagram/user/follow/h;->d:I

    goto :goto_c

    :pswitch_10
    iget v0, p0, Lcom/instagram/user/follow/h;->e:I

    goto :goto_c

    :pswitch_13
    iget v0, p0, Lcom/instagram/user/follow/h;->f:I

    goto :goto_c

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_d
        :pswitch_10
        :pswitch_13
    .end packed-switch
.end method

.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/user/follow/h;->c:Z

    return v0
.end method
