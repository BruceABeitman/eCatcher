.class public Lorg/apache/log4j/ag;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final o:I = 0x7fffffff
.field public static final p:I = 0xc350
.field public static final q:I = 0x9c40
.field public static final r:I = 0x7530
.field public static final s:I = 0x4e20
.field public static final t:I = 0x2710
.field public static final u:I = -0x80000000
.field public static final v:Lorg/apache/log4j/ag;
.field public static final w:Lorg/apache/log4j/ag;
.field public static final x:Lorg/apache/log4j/ag;
.field public static final y:Lorg/apache/log4j/ag;
.field public static final z:Lorg/apache/log4j/ag;
.field transient l:I
.field transient m:Ljava/lang/String;
.field transient n:I
.method static constructor <clinit>()V
.registers 4
new-instance v0, Lorg/apache/log4j/v;
const v1, 0xc350
const-string v2, "FATAL"
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/ag;->v:Lorg/apache/log4j/ag;
new-instance v0, Lorg/apache/log4j/v;
const v1, 0x9c40
const-string v2, "ERROR"
const/4 v3, 0x3
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/ag;->w:Lorg/apache/log4j/ag;
new-instance v0, Lorg/apache/log4j/v;
const/16 v1, 0x7530
const-string v2, "WARN"
const/4 v3, 0x4
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/ag;->x:Lorg/apache/log4j/ag;
new-instance v0, Lorg/apache/log4j/v;
const/16 v1, 0x4e20
const-string v2, "INFO"
const/4 v3, 0x6
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/ag;->y:Lorg/apache/log4j/ag;
new-instance v0, Lorg/apache/log4j/v;
const/16 v1, 0x2710
const-string v2, "DEBUG"
const/4 v3, 0x7
invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/v;-><init>(ILjava/lang/String;I)V
sput-object v0, Lorg/apache/log4j/ag;->z:Lorg/apache/log4j/ag;
return-void
.end method
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x2710
iput v0, p0, Lorg/apache/log4j/ag;->l:I
const-string v0, "DEBUG"
iput-object v0, p0, Lorg/apache/log4j/ag;->m:Ljava/lang/String;
const/4 v0, 0x7
iput v0, p0, Lorg/apache/log4j/ag;->n:I
return-void
.end method
.method protected constructor <init>(ILjava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lorg/apache/log4j/ag;->l:I
iput-object p2, p0, Lorg/apache/log4j/ag;->m:Ljava/lang/String;
iput p3, p0, Lorg/apache/log4j/ag;->n:I
return-void
.end method
.method public static a(ILorg/apache/log4j/ag;)Lorg/apache/log4j/ag;
.registers 3
check-cast p1, Lorg/apache/log4j/v;
invoke-static {p0, p1}, Lorg/apache/log4j/v;->a(ILorg/apache/log4j/v;)Lorg/apache/log4j/v;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Lorg/apache/log4j/ag;)Lorg/apache/log4j/ag;
.registers 3
check-cast p1, Lorg/apache/log4j/v;
invoke-static {p0, p1}, Lorg/apache/log4j/v;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;
move-result-object v0
return-object v0
.end method
.method public static b(I)Lorg/apache/log4j/ag;
.registers 2
sget-object v0, Lorg/apache/log4j/ag;->z:Lorg/apache/log4j/ag;
invoke-static {p0, v0}, Lorg/apache/log4j/ag;->a(ILorg/apache/log4j/ag;)Lorg/apache/log4j/ag;
move-result-object v0
return-object v0
.end method
.method public static b()[Lorg/apache/log4j/ag;
.registers 3
const/4 v0, 0x5
new-array v0, v0, [Lorg/apache/log4j/ag;
const/4 v1, 0x0
sget-object v2, Lorg/apache/log4j/ag;->v:Lorg/apache/log4j/ag;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Lorg/apache/log4j/ag;->w:Lorg/apache/log4j/ag;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Lorg/apache/log4j/v;->e:Lorg/apache/log4j/v;
aput-object v2, v0, v1
const/4 v1, 0x3
sget-object v2, Lorg/apache/log4j/ag;->y:Lorg/apache/log4j/ag;
aput-object v2, v0, v1
const/4 v1, 0x4
sget-object v2, Lorg/apache/log4j/ag;->z:Lorg/apache/log4j/ag;
aput-object v2, v0, v1
return-object v0
.end method
.method public static c(Ljava/lang/String;)Lorg/apache/log4j/ag;
.registers 2
invoke-static {p0}, Lorg/apache/log4j/v;->a(Ljava/lang/String;)Lorg/apache/log4j/v;
move-result-object v0
return-object v0
.end method
.method public final a()I
.registers 2
iget v0, p0, Lorg/apache/log4j/ag;->n:I
return v0
.end method
.method public a(Lorg/apache/log4j/ag;)Z
.registers 4
iget v0, p0, Lorg/apache/log4j/ag;->l:I
iget v1, p1, Lorg/apache/log4j/ag;->l:I
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final c()I
.registers 2
iget v0, p0, Lorg/apache/log4j/ag;->l:I
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Lorg/apache/log4j/ag;
if-eqz v1, :cond_e
check-cast p1, Lorg/apache/log4j/ag;
iget v1, p0, Lorg/apache/log4j/ag;->l:I
iget v2, p1, Lorg/apache/log4j/ag;->l:I
if-ne v1, v2, :cond_e
const/4 v0, 0x1
:cond_e
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/ag;->m:Ljava/lang/String;
return-object v0
.end method