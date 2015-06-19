.class public final enum Lcom/millennialmedia/android/da;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/millennialmedia/android/da;
.field public static final enum b:Lcom/millennialmedia/android/da;
.field private static final synthetic c:[Lcom/millennialmedia/android/da;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/millennialmedia/android/da;
const-string v1, "Add"
invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/da;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/millennialmedia/android/da;->a:Lcom/millennialmedia/android/da;
new-instance v0, Lcom/millennialmedia/android/da;
const-string v1, "Remove"
invoke-direct {v0, v1, v3}, Lcom/millennialmedia/android/da;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/millennialmedia/android/da;->b:Lcom/millennialmedia/android/da;
const/4 v0, 0x2
new-array v0, v0, [Lcom/millennialmedia/android/da;
sget-object v1, Lcom/millennialmedia/android/da;->a:Lcom/millennialmedia/android/da;
aput-object v1, v0, v2
sget-object v1, Lcom/millennialmedia/android/da;->b:Lcom/millennialmedia/android/da;
aput-object v1, v0, v3
sput-object v0, Lcom/millennialmedia/android/da;->c:[Lcom/millennialmedia/android/da;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/millennialmedia/android/da;
.registers 2
const-class v0, Lcom/millennialmedia/android/da;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/da;
return-object v0
.end method
.method public static values()[Lcom/millennialmedia/android/da;
.registers 1
sget-object v0, Lcom/millennialmedia/android/da;->c:[Lcom/millennialmedia/android/da;
invoke-virtual {v0}, [Lcom/millennialmedia/android/da;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/millennialmedia/android/da;
return-object v0
.end method