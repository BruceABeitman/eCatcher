.class final Lcom/nineoldandroids/animation/PreHoneycombCompat;
.super Ljava/lang/Object;
.source "PreHoneycombCompat.java"
.field static ALPHA:Lcom/nineoldandroids/util/Property;
.field static PIVOT_X:Lcom/nineoldandroids/util/Property;
.field static PIVOT_Y:Lcom/nineoldandroids/util/Property;
.field static ROTATION:Lcom/nineoldandroids/util/Property;
.field static ROTATION_X:Lcom/nineoldandroids/util/Property;
.field static ROTATION_Y:Lcom/nineoldandroids/util/Property;
.field static SCALE_X:Lcom/nineoldandroids/util/Property;
.field static SCALE_Y:Lcom/nineoldandroids/util/Property;
.field static SCROLL_X:Lcom/nineoldandroids/util/Property;
.field static SCROLL_Y:Lcom/nineoldandroids/util/Property;
.field static TRANSLATION_X:Lcom/nineoldandroids/util/Property;
.field static TRANSLATION_Y:Lcom/nineoldandroids/util/Property;
.field static X:Lcom/nineoldandroids/util/Property;
.field static Y:Lcom/nineoldandroids/util/Property;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$1;
const-string/jumbo v1, "alpha"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$1;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->ALPHA:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$2;
const-string/jumbo v1, "pivotX"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$2;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->PIVOT_X:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$3;
const-string/jumbo v1, "pivotY"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$3;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->PIVOT_Y:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$4;
const-string/jumbo v1, "translationX"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$4;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->TRANSLATION_X:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$5;
const-string/jumbo v1, "translationY"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$5;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->TRANSLATION_Y:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$6;
const-string/jumbo v1, "rotation"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$6;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->ROTATION:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$7;
const-string/jumbo v1, "rotationX"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$7;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->ROTATION_X:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$8;
const-string/jumbo v1, "rotationY"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$8;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->ROTATION_Y:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$9;
const-string/jumbo v1, "scaleX"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$9;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->SCALE_X:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$10;
const-string/jumbo v1, "scaleY"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$10;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->SCALE_Y:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$11;
const-string/jumbo v1, "scrollX"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$11;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->SCROLL_X:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$12;
const-string/jumbo v1, "scrollY"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$12;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->SCROLL_Y:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$13;
const-string/jumbo v1, "x"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$13;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->X:Lcom/nineoldandroids/util/Property;
new-instance v0, Lcom/nineoldandroids/animation/PreHoneycombCompat$14;
const-string/jumbo v1, "y"
invoke-direct {v0, v1}, Lcom/nineoldandroids/animation/PreHoneycombCompat$14;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/nineoldandroids/animation/PreHoneycombCompat;->Y:Lcom/nineoldandroids/util/Property;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method