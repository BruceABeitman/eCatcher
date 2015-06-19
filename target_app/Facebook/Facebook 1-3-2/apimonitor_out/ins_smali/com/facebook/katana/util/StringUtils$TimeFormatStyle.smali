.class public final enum Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
.super Ljava/lang/Enum;
.source "StringUtils.java"
.field private static final synthetic ENUM$VALUES:[Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
.field public static final enum MAILBOX_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
.field public static final enum MONTH_DAY_YEAR_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
.field public static final enum STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
.field public static final enum WEEK_DAY_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
const-string v1, "WEEK_DAY_STYLE"
invoke-direct {v0, v1, v2}, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->WEEK_DAY_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
new-instance v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
const-string v1, "STREAM_RELATIVE_STYLE"
invoke-direct {v0, v1, v3}, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
new-instance v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
const-string v1, "MAILBOX_RELATIVE_STYLE"
invoke-direct {v0, v1, v4}, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MAILBOX_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
new-instance v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
const-string v1, "MONTH_DAY_YEAR_STYLE"
invoke-direct {v0, v1, v5}, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MONTH_DAY_YEAR_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
const/4 v0, 0x4
new-array v0, v0, [Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
sget-object v1, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->WEEK_DAY_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MAILBOX_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
aput-object v1, v0, v4
sget-object v1, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->MONTH_DAY_YEAR_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
aput-object v1, v0, v5
sput-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->ENUM$VALUES:[Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
.registers 2
const-class v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object p0
check-cast p0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
return-object p0
.end method
.method public static values()[Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
.registers 4
const/4 v3, 0x0
sget-object v0, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->ENUM$VALUES:[Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
array-length v1, v0
new-array v2, v1, [Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v2
.end method