.class public final Lcom/instagram/feed/d/d;
.super Ljava/lang/Enum;
.source "Comment.java"
.field public static final enum a:I
.field public static final enum b:I
.field private static final synthetic c:[I
.method static constructor <clinit>()V
.registers 4
const/4 v0, 0x2
const/4 v3, 0x1
sput v3, Lcom/instagram/feed/d/d;->a:I
sput v0, Lcom/instagram/feed/d/d;->b:I
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Lcom/instagram/feed/d/d;->a:I
aput v2, v0, v1
sget v1, Lcom/instagram/feed/d/d;->b:I
aput v1, v0, v3
sput-object v0, Lcom/instagram/feed/d/d;->c:[I
return-void
.end method
.method public static a(I)I
.registers 2
packed-switch p0, :pswitch_data_a
sget v0, Lcom/instagram/feed/d/d;->a:I
:goto_5
return v0
:pswitch_6
sget v0, Lcom/instagram/feed/d/d;->b:I
goto :goto_5
nop
:pswitch_data_a
.packed-switch 0x1
:pswitch_6
.end packed-switch
.end method