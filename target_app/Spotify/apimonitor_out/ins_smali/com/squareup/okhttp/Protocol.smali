.class public final enum Lcom/squareup/okhttp/Protocol;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/squareup/okhttp/Protocol;
.field public static final enum b:Lcom/squareup/okhttp/Protocol;
.field public static final enum c:Lcom/squareup/okhttp/Protocol;
.field private static final synthetic d:[Lcom/squareup/okhttp/Protocol;
.field public final name:Lcom/squareup/okhttp/internal/a/d;
.field public final spdyVariant:Z
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x0
const/4 v3, 0x1
new-instance v0, Lcom/squareup/okhttp/Protocol;
const-string v1, "HTTP_2"
const-string v2, "HTTP-draft-09/2.0"
invoke-direct {v0, v1, v4, v2, v3}, Lcom/squareup/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V
sput-object v0, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;
new-instance v0, Lcom/squareup/okhttp/Protocol;
const-string v1, "SPDY_3"
const-string v2, "spdy/3.1"
invoke-direct {v0, v1, v3, v2, v3}, Lcom/squareup/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V
sput-object v0, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;
new-instance v0, Lcom/squareup/okhttp/Protocol;
const-string v1, "HTTP_11"
const-string v2, "http/1.1"
invoke-direct {v0, v1, v5, v2, v4}, Lcom/squareup/okhttp/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V
sput-object v0, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;
const/4 v0, 0x3
new-array v0, v0, [Lcom/squareup/okhttp/Protocol;
sget-object v1, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;
aput-object v1, v0, v4
sget-object v1, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;
aput-object v1, v0, v3
sget-object v1, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;
aput-object v1, v0, v5
sput-object v0, Lcom/squareup/okhttp/Protocol;->d:[Lcom/squareup/okhttp/Protocol;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
.registers 6
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
invoke-static {p3}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;
move-result-object v0
iput-object v0, p0, Lcom/squareup/okhttp/Protocol;->name:Lcom/squareup/okhttp/internal/a/d;
iput-boolean p4, p0, Lcom/squareup/okhttp/Protocol;->spdyVariant:Z
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/squareup/okhttp/Protocol;
.registers 2
const-class v0, Lcom/squareup/okhttp/Protocol;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/squareup/okhttp/Protocol;
return-object v0
.end method
.method public static values()[Lcom/squareup/okhttp/Protocol;
.registers 1
sget-object v0, Lcom/squareup/okhttp/Protocol;->d:[Lcom/squareup/okhttp/Protocol;
invoke-virtual {v0}, [Lcom/squareup/okhttp/Protocol;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/squareup/okhttp/Protocol;
return-object v0
.end method