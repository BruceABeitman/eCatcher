.class public final enum Lcom/instagram/cliffjumper/util/a/d;
.super Ljava/lang/Enum;
.source "PhotoEditFeatureTierUtil.java"
.field public static final enum a:Lcom/instagram/cliffjumper/util/a/d;
.field public static final enum b:Lcom/instagram/cliffjumper/util/a/d;
.field public static final enum c:Lcom/instagram/cliffjumper/util/a/d;
.field private static final synthetic f:[Lcom/instagram/cliffjumper/util/a/d;
.field public final d:Z
.field public final e:Z
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/instagram/cliffjumper/util/a/d;
const-string v1, "TOP"
invoke-direct {v0, v1, v2, v3, v3}, Lcom/instagram/cliffjumper/util/a/d;-><init>(Ljava/lang/String;IZZ)V
sput-object v0, Lcom/instagram/cliffjumper/util/a/d;->a:Lcom/instagram/cliffjumper/util/a/d;
new-instance v0, Lcom/instagram/cliffjumper/util/a/d;
const-string v1, "MIDDLE"
invoke-direct {v0, v1, v3, v3, v2}, Lcom/instagram/cliffjumper/util/a/d;-><init>(Ljava/lang/String;IZZ)V
sput-object v0, Lcom/instagram/cliffjumper/util/a/d;->b:Lcom/instagram/cliffjumper/util/a/d;
new-instance v0, Lcom/instagram/cliffjumper/util/a/d;
const-string v1, "BOTTOM"
invoke-direct {v0, v1, v4, v2, v2}, Lcom/instagram/cliffjumper/util/a/d;-><init>(Ljava/lang/String;IZZ)V
sput-object v0, Lcom/instagram/cliffjumper/util/a/d;->c:Lcom/instagram/cliffjumper/util/a/d;
const/4 v0, 0x3
new-array v0, v0, [Lcom/instagram/cliffjumper/util/a/d;
sget-object v1, Lcom/instagram/cliffjumper/util/a/d;->a:Lcom/instagram/cliffjumper/util/a/d;
aput-object v1, v0, v2
sget-object v1, Lcom/instagram/cliffjumper/util/a/d;->b:Lcom/instagram/cliffjumper/util/a/d;
aput-object v1, v0, v3
sget-object v1, Lcom/instagram/cliffjumper/util/a/d;->c:Lcom/instagram/cliffjumper/util/a/d;
aput-object v1, v0, v4
sput-object v0, Lcom/instagram/cliffjumper/util/a/d;->f:[Lcom/instagram/cliffjumper/util/a/d;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IZZ)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-boolean p3, p0, Lcom/instagram/cliffjumper/util/a/d;->d:Z
iput-boolean p4, p0, Lcom/instagram/cliffjumper/util/a/d;->e:Z
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/cliffjumper/util/a/d;
.registers 2
const-class v0, Lcom/instagram/cliffjumper/util/a/d;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/cliffjumper/util/a/d;
return-object v0
.end method
.method public static values()[Lcom/instagram/cliffjumper/util/a/d;
.registers 1
sget-object v0, Lcom/instagram/cliffjumper/util/a/d;->f:[Lcom/instagram/cliffjumper/util/a/d;
invoke-virtual {v0}, [Lcom/instagram/cliffjumper/util/a/d;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/cliffjumper/util/a/d;
return-object v0
.end method