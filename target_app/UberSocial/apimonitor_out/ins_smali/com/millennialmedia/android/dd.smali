.class public final enum Lcom/millennialmedia/android/dd;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/millennialmedia/android/dd;
.field public static final enum b:Lcom/millennialmedia/android/dd;
.field public static final enum c:Lcom/millennialmedia/android/dd;
.field public static final enum d:Lcom/millennialmedia/android/dd;
.field public static final enum e:Lcom/millennialmedia/android/dd;
.field private static final synthetic g:[Lcom/millennialmedia/android/dd;
.field private f:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/millennialmedia/android/dd;
const-string v1, "ERROR"
const-string v2, "error"
invoke-direct {v0, v1, v3, v2}, Lcom/millennialmedia/android/dd;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/millennialmedia/android/dd;->a:Lcom/millennialmedia/android/dd;
new-instance v0, Lcom/millennialmedia/android/dd;
const-string v1, "VOCALIZING"
const-string v2, "vocalizing"
invoke-direct {v0, v1, v4, v2}, Lcom/millennialmedia/android/dd;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/millennialmedia/android/dd;->b:Lcom/millennialmedia/android/dd;
new-instance v0, Lcom/millennialmedia/android/dd;
const-string v1, "RECORDING"
const-string v2, "recording"
invoke-direct {v0, v1, v5, v2}, Lcom/millennialmedia/android/dd;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/millennialmedia/android/dd;->c:Lcom/millennialmedia/android/dd;
new-instance v0, Lcom/millennialmedia/android/dd;
const-string v1, "READY"
const-string v2, "ready"
invoke-direct {v0, v1, v6, v2}, Lcom/millennialmedia/android/dd;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;
new-instance v0, Lcom/millennialmedia/android/dd;
const-string v1, "PROCESSING"
const-string v2, "processing"
invoke-direct {v0, v1, v7, v2}, Lcom/millennialmedia/android/dd;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/millennialmedia/android/dd;->e:Lcom/millennialmedia/android/dd;
const/4 v0, 0x5
new-array v0, v0, [Lcom/millennialmedia/android/dd;
sget-object v1, Lcom/millennialmedia/android/dd;->a:Lcom/millennialmedia/android/dd;
aput-object v1, v0, v3
sget-object v1, Lcom/millennialmedia/android/dd;->b:Lcom/millennialmedia/android/dd;
aput-object v1, v0, v4
sget-object v1, Lcom/millennialmedia/android/dd;->c:Lcom/millennialmedia/android/dd;
aput-object v1, v0, v5
sget-object v1, Lcom/millennialmedia/android/dd;->d:Lcom/millennialmedia/android/dd;
aput-object v1, v0, v6
sget-object v1, Lcom/millennialmedia/android/dd;->e:Lcom/millennialmedia/android/dd;
aput-object v1, v0, v7
sput-object v0, Lcom/millennialmedia/android/dd;->g:[Lcom/millennialmedia/android/dd;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/millennialmedia/android/dd;->f:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/android/dd;
.registers 2
const-class v0, Lcom/millennialmedia/android/dd;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/dd;
return-object v0
.end method
.method public static values()[Lcom/millennialmedia/android/dd;
.registers 1
sget-object v0, Lcom/millennialmedia/android/dd;->g:[Lcom/millennialmedia/android/dd;
invoke-virtual {v0}, [Lcom/millennialmedia/android/dd;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/millennialmedia/android/dd;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/dd;->f:Ljava/lang/String;
return-object v0
.end method