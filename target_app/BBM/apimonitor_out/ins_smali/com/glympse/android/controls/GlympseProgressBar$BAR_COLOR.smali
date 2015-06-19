.class public final enum Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
.super Ljava/lang/Enum;
.source "GlympseProgressBar.java"
.field private static final synthetic $VALUES:[Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
.field public static final enum COLOR_BLUE:Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
.field public static final enum COLOR_ORANGE:Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
const-string v1, "COLOR_ORANGE"
invoke-direct {v0, v1, v2}, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;->COLOR_ORANGE:Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
new-instance v0, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
const-string v1, "COLOR_BLUE"
invoke-direct {v0, v1, v3}, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;->COLOR_BLUE:Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
const/4 v0, 0x2
new-array v0, v0, [Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
sget-object v1, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;->COLOR_ORANGE:Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
aput-object v1, v0, v2
sget-object v1, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;->COLOR_BLUE:Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
aput-object v1, v0, v3
sput-object v0, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;->$VALUES:[Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
.registers 2
const-class v0, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
return-object v0
.end method
.method public static values()[Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
.registers 1
sget-object v0, Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;->$VALUES:[Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
invoke-virtual {v0}, [Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/glympse/android/controls/GlympseProgressBar$BAR_COLOR;
return-object v0
.end method