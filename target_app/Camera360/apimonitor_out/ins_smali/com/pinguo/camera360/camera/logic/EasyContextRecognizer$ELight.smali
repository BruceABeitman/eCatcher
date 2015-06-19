.class public final enum Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
.super Ljava/lang/Enum;
.source "EasyContextRecognizer.java"
.field public static final enum BACK:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
.field public static final enum LOW:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
.field public static final enum NIGHT:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
.field public static final enum NORMAL:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
.field public index:I
.field public name:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
const-string/jumbo v1, "NORMAL"
const-string/jumbo v2, "\u6b63\u5e38"
invoke-direct {v0, v1, v3, v3, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;-><init>(Ljava/lang/String;IILjava/lang/String;)V
sput-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NORMAL:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
new-instance v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
const-string/jumbo v1, "BACK"
const-string/jumbo v2, "\u9006\u5149"
invoke-direct {v0, v1, v4, v4, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;-><init>(Ljava/lang/String;IILjava/lang/String;)V
sput-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->BACK:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
new-instance v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
const-string/jumbo v1, "NIGHT"
const-string/jumbo v2, "\u591c\u95f4"
invoke-direct {v0, v1, v5, v5, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;-><init>(Ljava/lang/String;IILjava/lang/String;)V
sput-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NIGHT:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
new-instance v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
const-string/jumbo v1, "LOW"
const-string/jumbo v2, "\u4f4e\u5149"
invoke-direct {v0, v1, v6, v6, v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;-><init>(Ljava/lang/String;IILjava/lang/String;)V
sput-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->LOW:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
const/4 v0, 0x4
new-array v0, v0, [Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NORMAL:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
aput-object v1, v0, v3
sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->BACK:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
aput-object v1, v0, v4
sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->NIGHT:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
aput-object v1, v0, v5
sget-object v1, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->LOW:Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
aput-object v1, v0, v6
sput-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->ENUM$VALUES:[Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
iput-object p4, p0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->name:Ljava/lang/String;
return-void
.end method
.method public static getName(I)Ljava/lang/String;
.registers 6
invoke-static {}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->values()[Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
move-result-object v2
array-length v3, v2
const/4 v1, 0x0
:goto_6
if-lt v1, v3, :cond_a
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
aget-object v0, v2, v1
iget v4, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->index:I
if-ne p0, v4, :cond_13
iget-object v1, v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->name:Ljava/lang/String;
goto :goto_9
:cond_13
add-int/lit8 v1, v1, 0x1
goto :goto_6
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
.registers 2
const-class v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
return-object v0
.end method
.method public static values()[Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;->ENUM$VALUES:[Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer$ELight;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method