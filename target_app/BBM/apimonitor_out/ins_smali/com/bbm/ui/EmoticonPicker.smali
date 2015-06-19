.class public Lcom/bbm/ui/EmoticonPicker;
.super Landroid/widget/LinearLayout;
.source "EmoticonPicker.java"
.field public static a:Z
.field public static b:[I
.field public static c:I
.field public static d:I
.field private e:Ljava/util/List;
.field private final f:Ljava/util/Map;
.field private g:Lcom/bbm/ui/br;
.field private h:I
.field private i:I
.method static constructor <clinit>()V
.registers 2
const/4 v1, -0x1
const/4 v0, 0x0
sput-boolean v0, Lcom/bbm/ui/EmoticonPicker;->a:Z
const/4 v0, 0x0
sput-object v0, Lcom/bbm/ui/EmoticonPicker;->b:[I
sput v1, Lcom/bbm/ui/EmoticonPicker;->c:I
sput v1, Lcom/bbm/ui/EmoticonPicker;->d:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/EmoticonPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/EmoticonPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 10
const/4 v2, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/EmoticonPicker;->e:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/EmoticonPicker;->f:Ljava/util/Map;
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/EmoticonPicker;->g:Lcom/bbm/ui/br;
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPicker;->isInEditMode()Z
move-result v0
if-nez v0, :cond_ca
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPicker;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;
move-result-object v0
iget-object v0, v0, Lcom/bbm/util/c/c;->a:Ljava/util/List;
iput-object v0, p0, Lcom/bbm/ui/EmoticonPicker;->e:Ljava/util/List;
move v1, v2
:goto_28
iget-object v0, p0, Lcom/bbm/ui/EmoticonPicker;->e:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_51
iget-object v0, p0, Lcom/bbm/ui/EmoticonPicker;->e:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/c/e;
iget v3, v0, Lcom/bbm/util/c/e;->c:I
if-ltz v3, :cond_4d
iget-object v3, p0, Lcom/bbm/ui/EmoticonPicker;->f:Ljava/util/Map;
iget v0, v0, Lcom/bbm/util/c/e;->c:I
add-int/lit8 v0, v0, -0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_4d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_28
:cond_51
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030127
const/4 v3, 0x1
invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a058b
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonPicker;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/GridView;
new-instance v1, Lcom/bbm/ui/bp;
invoke-direct {v1, p0}, Lcom/bbm/ui/bp;-><init>(Lcom/bbm/ui/EmoticonPicker;)V
invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPicker;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f0c000b
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I
move-result v1
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPicker;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0b013e
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPicker;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v4
iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I
add-int/lit8 v5, v1, 0x1
mul-int/2addr v3, v5
sub-int v3, v4, v3
div-int v1, v3, v1
iput v1, p0, Lcom/bbm/ui/EmoticonPicker;->h:I
iget-object v1, p0, Lcom/bbm/ui/EmoticonPicker;->e:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_c2
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPicker;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;
move-result-object v1
const/high16 v3, -0x4080
sget-object v4, Lcom/bbm/util/c/g;->a:Lcom/bbm/util/c/g;
invoke-virtual {v1, v2, v3, v4}, Lcom/bbm/util/c/c;->a(IFLcom/bbm/util/c/g;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v3
int-to-float v3, v3
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
int-to-float v1, v1
div-float v1, v3, v1
iget v3, p0, Lcom/bbm/ui/EmoticonPicker;->h:I
int-to-float v3, v3
div-float v1, v3, v1
float-to-int v1, v1
iput v1, p0, Lcom/bbm/ui/EmoticonPicker;->i:I
:cond_c2
new-instance v1, Lcom/bbm/ui/bq;
invoke-direct {v1, p0, v2}, Lcom/bbm/ui/bq;-><init>(Lcom/bbm/ui/EmoticonPicker;B)V
invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V
:cond_ca
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/EmoticonPicker;)Lcom/bbm/ui/br;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonPicker;->g:Lcom/bbm/ui/br;
return-object v0
.end method
.method public static a(Landroid/widget/EditText;Ljava/lang/String;)V
.registers 8
const/4 v4, 0x0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x20
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I
move-result v0
invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I
move-result v0
invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I
move-result v5
invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I
move-result v1
invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v5
invoke-interface/range {v0 .. v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/EmoticonPicker;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonPicker;->f:Ljava/util/Map;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/EmoticonPicker;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/EmoticonPicker;->e:Ljava/util/List;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/EmoticonPicker;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/EmoticonPicker;->h:I
return v0
.end method
.method static synthetic e(Lcom/bbm/ui/EmoticonPicker;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/EmoticonPicker;->i:I
return v0
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method protected onMeasure(II)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V
const/4 v0, 0x2
new-array v0, v0, [I
sput-object v0, Lcom/bbm/ui/EmoticonPicker;->b:[I
sget-object v0, Lcom/bbm/ui/EmoticonPicker;->b:[I
invoke-virtual {p0, v0}, Lcom/bbm/ui/EmoticonPicker;->getLocationInWindow([I)V
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPicker;->getMeasuredWidth()I
move-result v0
sput v0, Lcom/bbm/ui/EmoticonPicker;->c:I
invoke-virtual {p0}, Lcom/bbm/ui/EmoticonPicker;->getMeasuredHeight()I
move-result v0
sput v0, Lcom/bbm/ui/EmoticonPicker;->d:I
return-void
.end method
.method public setEmoticonPickerListener(Lcom/bbm/ui/br;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/EmoticonPicker;->g:Lcom/bbm/ui/br;
return-void
.end method
.method public setVisibility(I)V
.registers 3
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V
if-nez p1, :cond_9
const/4 v0, 0x1
:goto_6
sput-boolean v0, Lcom/bbm/ui/EmoticonPicker;->a:Z
return-void
:cond_9
const/4 v0, 0x0
goto :goto_6
.end method