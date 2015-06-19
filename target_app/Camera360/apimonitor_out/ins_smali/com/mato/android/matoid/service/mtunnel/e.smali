.class public final Lcom/mato/android/matoid/service/mtunnel/e;
.super Lcom/google/a/e;
.field public static final a:Lcom/mato/android/matoid/service/mtunnel/e; = null
.field private static b:I = 0x2
.field private static c:Lcom/mato/android/matoid/service/mtunnel/e; = null
.field private static d:I = 0x3
.field private static e:[Lcom/mato/android/matoid/service/mtunnel/e;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x2
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/e;
const-string/jumbo v1, "SPDY2"
invoke-direct {v0, v3, v1}, Lcom/mato/android/matoid/service/mtunnel/e;-><init>(ILjava/lang/String;)V
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/e;->c:Lcom/mato/android/matoid/service/mtunnel/e;
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/e;
const/4 v1, 0x3
const-string/jumbo v2, "SPDY3"
invoke-direct {v0, v1, v2}, Lcom/mato/android/matoid/service/mtunnel/e;-><init>(ILjava/lang/String;)V
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/e;->a:Lcom/mato/android/matoid/service/mtunnel/e;
new-array v0, v3, [Lcom/mato/android/matoid/service/mtunnel/e;
const/4 v1, 0x0
sget-object v2, Lcom/mato/android/matoid/service/mtunnel/e;->c:Lcom/mato/android/matoid/service/mtunnel/e;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lcom/mato/android/matoid/service/mtunnel/e;->a:Lcom/mato/android/matoid/service/mtunnel/e;
aput-object v2, v0, v1
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/e;->e:[Lcom/mato/android/matoid/service/mtunnel/e;
return-void
.end method
.method private constructor <init>(ILjava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/a/e;-><init>(ILjava/lang/String;)V
return-void
.end method
.method public static b(I)Lcom/mato/android/matoid/service/mtunnel/e;
.registers 3
packed-switch p0, :pswitch_data_14
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_d
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/e;->c:Lcom/mato/android/matoid/service/mtunnel/e;
:goto_f
return-object v0
:pswitch_10
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/e;->a:Lcom/mato/android/matoid/service/mtunnel/e;
goto :goto_f
nop
:pswitch_data_14
.packed-switch 0x2
:pswitch_d
:pswitch_10
.end packed-switch
.end method
.method private static b()[Lcom/mato/android/matoid/service/mtunnel/e;
.registers 1
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/e;->e:[Lcom/mato/android/matoid/service/mtunnel/e;
return-object v0
.end method
.method public final a(I)Lcom/google/a/e;
.registers 3
invoke-static {p1}, Lcom/mato/android/matoid/service/mtunnel/e;->b(I)Lcom/mato/android/matoid/service/mtunnel/e;
move-result-object v0
return-object v0
.end method