.class public final enum Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.super Ljava/lang/Enum;
.source "PullToRefreshBase.java"
.field private static final synthetic ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.field public static final enum HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.field public static final enum VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
const-string/jumbo v1, "VERTICAL"
invoke-direct {v0, v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
const-string/jumbo v1, "HORIZONTAL"
invoke-direct {v0, v1, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
const/4 v0, 0x2
new-array v0, v0, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
aput-object v1, v0, v2
sget-object v1, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->HORIZONTAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
aput-object v1, v0, v3
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.registers 2
const-class v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
return-object v0
.end method
.method public static values()[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->ENUM$VALUES:[Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
array-length v1, v0
new-array v2, v1, [Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method