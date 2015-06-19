.class public final enum Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
.field public static final enum b:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
.field public static final enum c:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
.field private static final synthetic d:[Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
const-string v1, "UNKNOWN"
invoke-direct {v0, v1, v2}, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->a:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
new-instance v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
const-string v1, "MULTIPLE_CHOICE"
invoke-direct {v0, v1, v3}, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->b:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
new-instance v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
const-string v1, "TEXT"
invoke-direct {v0, v1, v4}, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->c:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
const/4 v0, 0x3
new-array v0, v0, [Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
sget-object v1, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->a:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
aput-object v1, v0, v2
sget-object v1, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->b:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
aput-object v1, v0, v3
sget-object v1, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->c:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
aput-object v1, v0, v4
sput-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->d:[Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
.registers 2
const-class v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
return-object v0
.end method
.method public static values()[Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
.registers 1
sget-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->d:[Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
invoke-virtual {v0}, [Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
sget-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->b:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
if-ne v0, p0, :cond_7
const-string v0, "multiple_choice"
:goto_6
return-object v0
:cond_7
sget-object v0, Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;->c:Lcom/mixpanel/android/mpmetrics/Survey$QuestionType;
if-ne v0, p0, :cond_e
const-string v0, "text"
goto :goto_6
:cond_e
const-string v0, "*unknown_type*"
goto :goto_6
.end method