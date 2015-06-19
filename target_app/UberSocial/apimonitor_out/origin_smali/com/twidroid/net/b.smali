.class public Lcom/twidroid/net/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x190

.field public static final i:I = 0x191

.field public static final j:I = 0x193

.field public static final k:I = 0x2bc

.field public static final l:I = 0x2bd


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .registers 2

    packed-switch p0, :pswitch_data_10

    const v0, 0x7f0c010f

    :goto_6
    return v0

    :pswitch_7
    const v0, 0x7f0c015a

    goto :goto_6

    :pswitch_b
    const v0, 0x7f0c0155

    goto :goto_6

    nop

    :pswitch_data_10
    .packed-switch 0x2bc
        :pswitch_7
        :pswitch_b
    .end packed-switch
.end method

.method public static a(Ljava/lang/Exception;)I
    .registers 2

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x4

    return v0
.end method
