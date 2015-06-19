.class public final enum Lcom/b/a/a/l;
.super Ljava/lang/Enum;
.source "DbxChooser.java"
.field public static final enum a:Lcom/b/a/a/l;
.field public static final enum b:Lcom/b/a/a/l;
.field public static final enum c:Lcom/b/a/a/l;
.field private static final synthetic e:[Lcom/b/a/a/l;
.field public final d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/b/a/a/l;
const-string v1, "PREVIEW_LINK"
const-string v2, "com.dropbox.android.intent.action.GET_PREVIEW"
invoke-direct {v0, v1, v3, v2}, Lcom/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/b/a/a/l;->a:Lcom/b/a/a/l;
new-instance v0, Lcom/b/a/a/l;
const-string v1, "DIRECT_LINK"
const-string v2, "com.dropbox.android.intent.action.GET_DIRECT"
invoke-direct {v0, v1, v4, v2}, Lcom/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/b/a/a/l;->b:Lcom/b/a/a/l;
new-instance v0, Lcom/b/a/a/l;
const-string v1, "FILE_CONTENT"
const-string v2, "com.dropbox.android.intent.action.GET_CONTENT"
invoke-direct {v0, v1, v5, v2}, Lcom/b/a/a/l;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/b/a/a/l;->c:Lcom/b/a/a/l;
const/4 v0, 0x3
new-array v0, v0, [Lcom/b/a/a/l;
sget-object v1, Lcom/b/a/a/l;->a:Lcom/b/a/a/l;
aput-object v1, v0, v3
sget-object v1, Lcom/b/a/a/l;->b:Lcom/b/a/a/l;
aput-object v1, v0, v4
sget-object v1, Lcom/b/a/a/l;->c:Lcom/b/a/a/l;
aput-object v1, v0, v5
sput-object v0, Lcom/b/a/a/l;->e:[Lcom/b/a/a/l;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/b/a/a/l;->d:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/b/a/a/l;
.registers 2
const-class v0, Lcom/b/a/a/l;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/b/a/a/l;
return-object v0
.end method
.method public static values()[Lcom/b/a/a/l;
.registers 1
sget-object v0, Lcom/b/a/a/l;->e:[Lcom/b/a/a/l;
invoke-virtual {v0}, [Lcom/b/a/a/l;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/b/a/a/l;
return-object v0
.end method