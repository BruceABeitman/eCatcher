.class public final enum Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
.super Ljava/lang/Enum;
.source "TryDatabaseHelper.java"
.field private static final synthetic ENUM$VALUES:[Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
.field public static final enum try_effect:Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
.method static constructor <clinit>()V
.registers 3
const/4 v2, 0x0
new-instance v0, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
const-string/jumbo v1, "try_effect"
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;->try_effect:Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
const/4 v0, 0x1
new-array v0, v0, [Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
sget-object v1, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;->try_effect:Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
aput-object v1, v0, v2
sput-object v0, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;->ENUM$VALUES:[Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
.registers 2
const-class v0, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
return-object v0
.end method
.method public static values()[Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;->ENUM$VALUES:[Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
array-length v1, v0
new-array v2, v1, [Lcom/pinguo/camera360/shop/model/tri/TryDatabaseHelper$TABLE_NAME;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method