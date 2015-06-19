.class public final enum Lcom/umeng/newxp/a$a;
.super Ljava/lang/Enum;
.source "PreloadData.java"
.field public static final enum a:Lcom/umeng/newxp/a$a;
.field public static final enum b:Lcom/umeng/newxp/a$a;
.field private static final synthetic c:[Lcom/umeng/newxp/a$a;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/umeng/newxp/a$a;
const-string/jumbo v1, "EXIST"
invoke-direct {v0, v1, v2}, Lcom/umeng/newxp/a$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;
new-instance v0, Lcom/umeng/newxp/a$a;
const-string/jumbo v1, "UNEXIST"
invoke-direct {v0, v1, v3}, Lcom/umeng/newxp/a$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;
const/4 v0, 0x2
new-array v0, v0, [Lcom/umeng/newxp/a$a;
sget-object v1, Lcom/umeng/newxp/a$a;->a:Lcom/umeng/newxp/a$a;
aput-object v1, v0, v2
sget-object v1, Lcom/umeng/newxp/a$a;->b:Lcom/umeng/newxp/a$a;
aput-object v1, v0, v3
sput-object v0, Lcom/umeng/newxp/a$a;->c:[Lcom/umeng/newxp/a$a;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/umeng/newxp/a$a;
.registers 2
const-class v0, Lcom/umeng/newxp/a$a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/umeng/newxp/a$a;
return-object v0
.end method
.method public static values()[Lcom/umeng/newxp/a$a;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/umeng/newxp/a$a;->c:[Lcom/umeng/newxp/a$a;
array-length v1, v0
new-array v2, v1, [Lcom/umeng/newxp/a$a;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method