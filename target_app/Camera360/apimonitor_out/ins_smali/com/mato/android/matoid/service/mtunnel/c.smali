.class public final Lcom/mato/android/matoid/service/mtunnel/c;
.super Lcom/google/a/e;
.field public static final a:Lcom/mato/android/matoid/service/mtunnel/c; = null
.field private static b:I = 0x0
.field private static c:Lcom/mato/android/matoid/service/mtunnel/c; = null
.field private static d:I = 0x1
.field private static e:Lcom/mato/android/matoid/service/mtunnel/c; = null
.field private static f:I = 0x2
.field private static g:Lcom/mato/android/matoid/service/mtunnel/c; = null
.field private static h:I = 0x3
.field private static i:Lcom/mato/android/matoid/service/mtunnel/c; = null
.field private static j:I = 0x4
.field private static k:[Lcom/mato/android/matoid/service/mtunnel/c;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/c;
const-string/jumbo v1, "LOG_INFO"
invoke-direct {v0, v2, v1}, Lcom/mato/android/matoid/service/mtunnel/c;-><init>(ILjava/lang/String;)V
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->c:Lcom/mato/android/matoid/service/mtunnel/c;
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/c;
const-string/jumbo v1, "LOG_WARNING"
invoke-direct {v0, v3, v1}, Lcom/mato/android/matoid/service/mtunnel/c;-><init>(ILjava/lang/String;)V
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->e:Lcom/mato/android/matoid/service/mtunnel/c;
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/c;
const-string/jumbo v1, "LOG_ERROR"
invoke-direct {v0, v4, v1}, Lcom/mato/android/matoid/service/mtunnel/c;-><init>(ILjava/lang/String;)V
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->g:Lcom/mato/android/matoid/service/mtunnel/c;
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/c;
const-string/jumbo v1, "LOG_FATAL"
invoke-direct {v0, v5, v1}, Lcom/mato/android/matoid/service/mtunnel/c;-><init>(ILjava/lang/String;)V
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->i:Lcom/mato/android/matoid/service/mtunnel/c;
new-instance v0, Lcom/mato/android/matoid/service/mtunnel/c;
const-string/jumbo v1, "LOG_NONE"
invoke-direct {v0, v6, v1}, Lcom/mato/android/matoid/service/mtunnel/c;-><init>(ILjava/lang/String;)V
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->a:Lcom/mato/android/matoid/service/mtunnel/c;
const/4 v0, 0x5
new-array v0, v0, [Lcom/mato/android/matoid/service/mtunnel/c;
sget-object v1, Lcom/mato/android/matoid/service/mtunnel/c;->c:Lcom/mato/android/matoid/service/mtunnel/c;
aput-object v1, v0, v2
sget-object v1, Lcom/mato/android/matoid/service/mtunnel/c;->e:Lcom/mato/android/matoid/service/mtunnel/c;
aput-object v1, v0, v3
sget-object v1, Lcom/mato/android/matoid/service/mtunnel/c;->g:Lcom/mato/android/matoid/service/mtunnel/c;
aput-object v1, v0, v4
sget-object v1, Lcom/mato/android/matoid/service/mtunnel/c;->i:Lcom/mato/android/matoid/service/mtunnel/c;
aput-object v1, v0, v5
sget-object v1, Lcom/mato/android/matoid/service/mtunnel/c;->a:Lcom/mato/android/matoid/service/mtunnel/c;
aput-object v1, v0, v6
sput-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->k:[Lcom/mato/android/matoid/service/mtunnel/c;
return-void
.end method
.method private constructor <init>(ILjava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/a/e;-><init>(ILjava/lang/String;)V
return-void
.end method
.method public static b(I)Lcom/mato/android/matoid/service/mtunnel/c;
.registers 3
packed-switch p0, :pswitch_data_1c
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_d
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->c:Lcom/mato/android/matoid/service/mtunnel/c;
:goto_f
return-object v0
:pswitch_10
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->e:Lcom/mato/android/matoid/service/mtunnel/c;
goto :goto_f
:pswitch_13
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->g:Lcom/mato/android/matoid/service/mtunnel/c;
goto :goto_f
:pswitch_16
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->i:Lcom/mato/android/matoid/service/mtunnel/c;
goto :goto_f
:pswitch_19
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->a:Lcom/mato/android/matoid/service/mtunnel/c;
goto :goto_f
:pswitch_data_1c
.packed-switch 0x0
:pswitch_d
:pswitch_10
:pswitch_13
:pswitch_16
:pswitch_19
.end packed-switch
.end method
.method private static b()[Lcom/mato/android/matoid/service/mtunnel/c;
.registers 1
sget-object v0, Lcom/mato/android/matoid/service/mtunnel/c;->k:[Lcom/mato/android/matoid/service/mtunnel/c;
return-object v0
.end method
.method public final a(I)Lcom/google/a/e;
.registers 3
invoke-static {p1}, Lcom/mato/android/matoid/service/mtunnel/c;->b(I)Lcom/mato/android/matoid/service/mtunnel/c;
move-result-object v0
return-object v0
.end method