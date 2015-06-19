.class public final enum Lorg/apache/a/a/a/d;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lorg/apache/a/a/a/d;
.field public static final enum b:Lorg/apache/a/a/a/d;
.field private static final synthetic c:[Lorg/apache/a/a/a/d;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lorg/apache/a/a/a/d;
const-string v1, "STRICT"
invoke-direct {v0, v1, v2}, Lorg/apache/a/a/a/d;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/a/a/a/d;->a:Lorg/apache/a/a/a/d;
new-instance v0, Lorg/apache/a/a/a/d;
const-string v1, "BROWSER_COMPATIBLE"
invoke-direct {v0, v1, v3}, Lorg/apache/a/a/a/d;-><init>(Ljava/lang/String;I)V
sput-object v0, Lorg/apache/a/a/a/d;->b:Lorg/apache/a/a/a/d;
const/4 v0, 0x2
new-array v0, v0, [Lorg/apache/a/a/a/d;
sget-object v1, Lorg/apache/a/a/a/d;->a:Lorg/apache/a/a/a/d;
aput-object v1, v0, v2
sget-object v1, Lorg/apache/a/a/a/d;->b:Lorg/apache/a/a/a/d;
aput-object v1, v0, v3
sput-object v0, Lorg/apache/a/a/a/d;->c:[Lorg/apache/a/a/a/d;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lorg/apache/a/a/a/d;
.registers 2
const-class v0, Lorg/apache/a/a/a/d;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lorg/apache/a/a/a/d;
return-object v0
.end method
.method public static final values()[Lorg/apache/a/a/a/d;
.registers 1
sget-object v0, Lorg/apache/a/a/a/d;->c:[Lorg/apache/a/a/a/d;
invoke-virtual {v0}, [Lorg/apache/a/a/a/d;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lorg/apache/a/a/a/d;
return-object v0
.end method