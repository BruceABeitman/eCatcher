.class public final Lcom/megvii/api/Common;
.super Ljava/lang/Object;
.source "Common.java"
.field public static final MG_RETCODE_INDEX_OUT_OF_RANGE:I = 0x3
.field public static final MG_RETCODE_INVALID_ARGUMENT:I = 0x1
.field public static final MG_RETCODE_INVALID_HANDLE:I = 0x2
.field public static final MG_RETCODE_OK:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static handleException(I)V
.registers 3
packed-switch p0, :pswitch_data_20
return-void
:pswitch_4
new-instance v0, Lcom/megvii/api/exception/MegviiException;
const-string/jumbo v1, "MG_INDEX_OUT_OF_RANGE"
invoke-direct {v0, v1}, Lcom/megvii/api/exception/MegviiException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_d
new-instance v0, Lcom/megvii/api/exception/MegviiException;
const-string/jumbo v1, "MG_INVALID_ARGUMENT"
invoke-direct {v0, v1}, Lcom/megvii/api/exception/MegviiException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_16
new-instance v0, Lcom/megvii/api/exception/MegviiException;
const-string/jumbo v1, "MG_INVALID_HANDLE"
invoke-direct {v0, v1}, Lcom/megvii/api/exception/MegviiException;-><init>(Ljava/lang/String;)V
throw v0
nop
:pswitch_data_20
.packed-switch 0x1
:pswitch_d
:pswitch_16
:pswitch_4
.end packed-switch
.end method