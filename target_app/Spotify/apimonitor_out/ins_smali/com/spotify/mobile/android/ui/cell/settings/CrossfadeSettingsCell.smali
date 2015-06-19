.class public Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
.super Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;
.source "SourceFile"
.field protected c:Z
.field private d:Landroid/widget/SeekBar;
.field private e:I
.field private f:Landroid/widget/PopupWindow;
.field private g:I
.field private h:I
.field private i:I
.field private j:I
.field private k:Landroid/widget/TextView;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;)V
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->l:Ljava/lang/String;
const-string v0, " s "
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->m:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->l:Ljava/lang/String;
const-string v0, " s "
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->m:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->g:I
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;)Landroid/widget/PopupWindow;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->f:Landroid/widget/PopupWindow;
return-object v0
.end method
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
.registers 5
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300c8
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;
iget-object v1, v0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->d:Landroid/widget/SeekBar;
new-instance v2, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;
invoke-direct {v2, v0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell$1;-><init>(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;)V
invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->i:I
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->h:I
return p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;I)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->f:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->l:Ljava/lang/String;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->m:Ljava/lang/String;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
if-gtz p1, :cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_20
:goto_20
return-void
:cond_21
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, " "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->m:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_20
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;I)Landroid/graphics/Point;
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
invoke-static {v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->measure(II)V
int-to-float v0, p1
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->d:Landroid/widget/SeekBar;
invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I
move-result v1
int-to-float v1, v1
div-float/2addr v0, v1
iget v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->g:I
int-to-float v1, v1
mul-float/2addr v0, v1
float-to-int v0, v0
iget v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->h:I
add-int/2addr v0, v1
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I
move-result v1
int-to-float v1, v1
const/high16 v2, 0x4000
div-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
sub-int/2addr v0, v1
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->d:Landroid/widget/SeekBar;
invoke-virtual {v1}, Landroid/widget/SeekBar;->getHeight()I
move-result v1
div-int/lit8 v1, v1, 0x2
iget-object v2, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I
move-result v2
add-int/2addr v1, v2
iget v2, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->j:I
div-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
neg-int v1, v1
new-instance v2, Landroid/graphics/Point;
invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V
return-object v2
.end method
.method protected final a(Landroid/content/ContentValues;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->d:Landroid/widget/SeekBar;
invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I
move-result v3
iget v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->e:I
if-ne v3, v0, :cond_14
const-string v0, "Not saving crossfade settings, they are the same."
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:goto_13
return-void
:cond_14
if-ltz v3, :cond_35
const/16 v0, 0xc
if-gt v3, v0, :cond_35
move v0, v1
:goto_1b
const-string v4, "Out of range again! aaargh."
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
if-nez v3, :cond_37
const-string v0, "crossfade"
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bn:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->a(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/Object;)V
goto :goto_13
:cond_35
move v0, v2
goto :goto_1b
:cond_37
const-string v0, "crossfade"
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bn:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->a(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/Object;)V
const-string v0, "crossfade_time_seconds"
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->bo:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->a(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/Object;)V
goto :goto_13
.end method
.method public final a(Landroid/database/Cursor;)V
.registers 8
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->c:Z
if-eqz v0, :cond_6
:goto_5
return-void
:cond_6
const-string v0, "crossfade"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/al;->a(Landroid/database/Cursor;I)Z
move-result v3
const-string v0, "crossfade_time_seconds"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v0
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v2
if-ltz v2, :cond_40
const/16 v0, 0xc
if-gt v2, v0, :cond_40
const/4 v0, 0x1
:goto_21
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Out of range: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V
if-eqz v3, :cond_36
move v1, v2
:cond_36
iput v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->e:I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->d:Landroid/widget/SeekBar;
iget v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->e:I
invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V
goto :goto_5
:cond_40
move v0, v1
goto :goto_21
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method protected onFinishInflate()V
.registers 9
const v7, 0x7f0f033f
const v6, 0x7f0201c0
const/4 v5, -0x1
const/4 v4, -0x2
const/4 v3, 0x0
invoke-super {p0}, Lcom/spotify/mobile/android/ui/cell/settings/AbstractSettingsCell;->onFinishInflate()V
const v0, 0x7f0a0352
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/SeekBar;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->d:Landroid/widget/SeekBar;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->d:Landroid/widget/SeekBar;
const/16 v1, 0xc
invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->d:Landroid/widget/SeekBar;
invoke-virtual {v0}, Landroid/widget/SeekBar;->refreshDrawableState()V
new-instance v0, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
const/16 v1, 0x11
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
const v1, 0x7f02007d
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
const/4 v1, 0x1
const/high16 v2, 0x4180
invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0900d8
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v1, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
new-instance v0, Landroid/widget/PopupWindow;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->k:Landroid/widget/TextView;
invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->f:Landroid/widget/PopupWindow;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->f:Landroid/widget/PopupWindow;
invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->f:Landroid/widget/PopupWindow;
invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->f:Landroid/widget/PopupWindow;
invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->f:Landroid/widget/PopupWindow;
invoke-virtual {v0, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->i:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->j:I
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, " "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->l:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, " "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0f0364
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->m:Ljava/lang/String;
const v0, 0x7f0a0388
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0a0389
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "12 "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/cell/settings/CrossfadeSettingsCell;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0f0364
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method