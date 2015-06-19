.class public final enum Lcom/bbm/g/al;
.super Ljava/lang/Enum;
.source "GroupUpdates.java"
.field public static final enum a:Lcom/bbm/g/al;
.field public static final enum b:Lcom/bbm/g/al;
.field public static final enum c:Lcom/bbm/g/al;
.field public static final enum d:Lcom/bbm/g/al;
.field public static final enum e:Lcom/bbm/g/al;
.field public static final enum f:Lcom/bbm/g/al;
.field public static final enum g:Lcom/bbm/g/al;
.field public static final enum h:Lcom/bbm/g/al;
.field public static final enum i:Lcom/bbm/g/al;
.field public static final enum j:Lcom/bbm/g/al;
.field public static final enum k:Lcom/bbm/g/al;
.field public static final enum l:Lcom/bbm/g/al;
.field public static final enum m:Lcom/bbm/g/al;
.field private static n:Ljava/util/Hashtable;
.field private static final synthetic p:[Lcom/bbm/g/al;
.field private final o:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/bbm/g/al;
const-string v1, "SomebodyNewJoinsTheGroup"
const-string v2, "SomebodyNewJoinsTheGroup"
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->a:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "PicturePost"
const-string v2, "PicturePost"
invoke-direct {v0, v1, v5, v2}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->b:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "PictureCommentPost"
const-string v2, "PictureCommentPost"
invoke-direct {v0, v1, v6, v2}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->c:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "ListItemNew"
const-string v2, "ListItemNew"
invoke-direct {v0, v1, v7, v2}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->d:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "ListItemChange"
const-string v2, "ListItemChange"
invoke-direct {v0, v1, v8, v2}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->e:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "ListItemDeleted"
const/4 v2, 0x5
const-string v3, "ListItemDeleted"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->f:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "ListItemCompleted"
const/4 v2, 0x6
const-string v3, "ListItemCompleted"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->g:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "ListCommentPost"
const/4 v2, 0x7
const-string v3, "ListCommentPost"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->h:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "PictureCaptionChange"
const/16 v2, 0x8
const-string v3, "PictureCaptionChange"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->i:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "PictureLike"
const/16 v2, 0x9
const-string v3, "PictureLike"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->j:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "CalendarEventNew"
const/16 v2, 0xa
const-string v3, "CalendarEventNew"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->k:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "CalendarEventChange"
const/16 v2, 0xb
const-string v3, "CalendarEventChange"
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->l:Lcom/bbm/g/al;
new-instance v0, Lcom/bbm/g/al;
const-string v1, "Unspecified"
const/16 v2, 0xc
const-string v3, ""
invoke-direct {v0, v1, v2, v3}, Lcom/bbm/g/al;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/g/al;->m:Lcom/bbm/g/al;
const/16 v0, 0xd
new-array v0, v0, [Lcom/bbm/g/al;
sget-object v1, Lcom/bbm/g/al;->a:Lcom/bbm/g/al;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/g/al;->b:Lcom/bbm/g/al;
aput-object v1, v0, v5
sget-object v1, Lcom/bbm/g/al;->c:Lcom/bbm/g/al;
aput-object v1, v0, v6
sget-object v1, Lcom/bbm/g/al;->d:Lcom/bbm/g/al;
aput-object v1, v0, v7
sget-object v1, Lcom/bbm/g/al;->e:Lcom/bbm/g/al;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/bbm/g/al;->f:Lcom/bbm/g/al;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/bbm/g/al;->g:Lcom/bbm/g/al;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/bbm/g/al;->h:Lcom/bbm/g/al;
aput-object v2, v0, v1
const/16 v1, 0x8
sget-object v2, Lcom/bbm/g/al;->i:Lcom/bbm/g/al;
aput-object v2, v0, v1
const/16 v1, 0x9
sget-object v2, Lcom/bbm/g/al;->j:Lcom/bbm/g/al;
aput-object v2, v0, v1
const/16 v1, 0xa
sget-object v2, Lcom/bbm/g/al;->k:Lcom/bbm/g/al;
aput-object v2, v0, v1
const/16 v1, 0xb
sget-object v2, Lcom/bbm/g/al;->l:Lcom/bbm/g/al;
aput-object v2, v0, v1
const/16 v1, 0xc
sget-object v2, Lcom/bbm/g/al;->m:Lcom/bbm/g/al;
aput-object v2, v0, v1
sput-object v0, Lcom/bbm/g/al;->p:[Lcom/bbm/g/al;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/g/al;->o:Ljava/lang/String;
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/g/al;
.registers 7
sget-object v0, Lcom/bbm/g/al;->n:Ljava/util/Hashtable;
if-nez v0, :cond_1d
new-instance v1, Ljava/util/Hashtable;
invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V
invoke-static {}, Lcom/bbm/g/al;->values()[Lcom/bbm/g/al;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_f
if-ge v0, v3, :cond_1b
aget-object v4, v2, v0
iget-object v5, v4, Lcom/bbm/g/al;->o:Ljava/lang/String;
invoke-virtual {v1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_1b
sput-object v1, Lcom/bbm/g/al;->n:Ljava/util/Hashtable;
:cond_1d
if-eqz p0, :cond_2a
sget-object v0, Lcom/bbm/g/al;->n:Ljava/util/Hashtable;
invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/al;
:goto_27
if-eqz v0, :cond_2c
:goto_29
return-object v0
:cond_2a
const/4 v0, 0x0
goto :goto_27
:cond_2c
sget-object v0, Lcom/bbm/g/al;->m:Lcom/bbm/g/al;
goto :goto_29
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/g/al;
.registers 2
const-class v0, Lcom/bbm/g/al;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/g/al;
return-object v0
.end method
.method public static values()[Lcom/bbm/g/al;
.registers 1
sget-object v0, Lcom/bbm/g/al;->p:[Lcom/bbm/g/al;
invoke-virtual {v0}, [Lcom/bbm/g/al;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/g/al;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/g/al;->o:Ljava/lang/String;
return-object v0
.end method