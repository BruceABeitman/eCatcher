.class public final Lcom/spotify/android/paste/widget/h;
.super Ljava/lang/Object;
.source "SourceFile"
.method private static a(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/widget/Button;
.registers 6
const/4 v2, 0x0
if-eqz p2, :cond_1c
new-instance v0, Landroid/widget/Button;
invoke-direct {v0, p0, v2, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
:goto_8
invoke-static {p0, p1}, Lcom/spotify/android/paste/widget/h;->m(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-eqz v1, :cond_11
invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_11
invoke-static {p0, v2, p2}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V
invoke-static {p0, v0, v2, p2}, Lcom/spotify/android/paste/graphics/a;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;I)V
return-object v0
:cond_1c
new-instance v0, Landroid/widget/Button;
invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V
const p2, 0x1010048
goto :goto_8
.end method
.method public static a(Landroid/content/Context;)Landroid/widget/EditText;
.registers 5
const v3, 0x101006e
const/4 v2, 0x0
new-instance v0, Landroid/widget/EditText;
invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
invoke-static {p0, v2}, Lcom/spotify/android/paste/widget/h;->m(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-eqz v1, :cond_12
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_12
invoke-static {p0, v2, v3}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V
invoke-static {p0, v0, v2, v3}, Lcom/spotify/android/paste/graphics/a;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;I)V
return-object v0
.end method
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/TextView;
.registers 6
const/4 v3, 0x0
const v2, 0x1010084
new-instance v0, Landroid/widget/TextView;
invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
invoke-static {p0, p1}, Lcom/spotify/android/paste/widget/h;->m(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-eqz v1, :cond_12
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_12
invoke-static {p0, v3, v2}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
invoke-static {p0, v0, v3, v2}, Lcom/spotify/android/paste/graphics/a;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;I)V
return-object v0
.end method
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/widget/ToggleButton;
.registers 8
const/4 v3, 0x0
sget v1, Lcom/spotify/android/paste/b;->e:I
if-eqz v1, :cond_27
new-instance v0, Landroid/widget/ToggleButton;
invoke-direct {v0, p0, v3, v1}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
:goto_a
invoke-virtual {v0, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V
invoke-virtual {v0, p3}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V
invoke-static {p0, p1}, Lcom/spotify/android/paste/widget/h;->m(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
if-eqz v2, :cond_19
invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_19
invoke-static {p0, v3, v1}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/Typeface;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V
invoke-static {p0, v0, v3, v1}, Lcom/spotify/android/paste/graphics/a;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;I)V
invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
return-object v0
:cond_27
new-instance v0, Landroid/widget/ToggleButton;
invoke-direct {v0, p0}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;)V
const v1, 0x1010048
goto :goto_a
.end method
.method public static b(Landroid/content/Context;)Landroid/widget/AutoCompleteTextView;
.registers 5
const v3, 0x101006b
const/4 v2, 0x0
new-instance v0, Landroid/widget/AutoCompleteTextView;
invoke-direct {v0, p0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V
invoke-static {p0, v2}, Lcom/spotify/android/paste/widget/h;->m(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-eqz v1, :cond_12
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_12
invoke-static {p0, v2, v3}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTypeface(Landroid/graphics/Typeface;)V
invoke-static {p0, v0, v2, v3}, Lcom/spotify/android/paste/graphics/a;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;I)V
return-object v0
.end method
.method public static b(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/widget/Button;
move-result-object v0
return-object v0
.end method
.method private static b(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/SpotifyIconView;
.registers 5
if-eqz p2, :cond_12
new-instance v0, Lcom/spotify/android/paste/widget/SpotifyIconView;
const/4 v1, 0x0
invoke-direct {v0, p0, v1, p2}, Lcom/spotify/android/paste/widget/SpotifyIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
:goto_8
invoke-static {p0, p1}, Lcom/spotify/android/paste/widget/h;->m(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-eqz v1, :cond_11
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SpotifyIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_11
return-object v0
:cond_12
new-instance v0, Lcom/spotify/android/paste/widget/SpotifyIconView;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/SpotifyIconView;-><init>(Landroid/content/Context;)V
goto :goto_8
.end method
.method public static c(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
.registers 3
sget v0, Lcom/spotify/android/paste/b;->e:I
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/widget/Button;
move-result-object v0
return-object v0
.end method
.method public static c(Landroid/content/Context;)Landroid/widget/CheckBox;
.registers 5
const v3, 0x101006c
const/4 v2, 0x0
new-instance v0, Landroid/widget/CheckBox;
invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V
invoke-static {p0, v2}, Lcom/spotify/android/paste/widget/h;->m(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-eqz v1, :cond_12
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_12
invoke-static {p0, v2, v3}, Lcom/spotify/android/paste/graphics/h;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/graphics/Typeface;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTypeface(Landroid/graphics/Typeface;)V
invoke-static {p0, v0, v2, v3}, Lcom/spotify/android/paste/graphics/a;->a(Landroid/content/Context;Landroid/widget/TextView;Landroid/util/AttributeSet;I)V
return-object v0
.end method
.method private static c(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/ListItemView;
.registers 5
if-eqz p2, :cond_12
new-instance v0, Lcom/spotify/android/paste/widget/ListItemView;
const/4 v1, 0x0
invoke-direct {v0, p0, v1, p2}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
:goto_8
invoke-static {p0, p1}, Lcom/spotify/android/paste/widget/h;->n(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
if-eqz v1, :cond_11
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_11
return-object v0
:cond_12
new-instance v0, Lcom/spotify/android/paste/widget/ListItemView;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;)V
goto :goto_8
.end method
.method public static d(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
.registers 3
sget v0, Lcom/spotify/android/paste/b;->c:I
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/widget/Button;
move-result-object v0
return-object v0
.end method
.method public static e(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
.registers 3
sget v0, Lcom/spotify/android/paste/b;->d:I
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/widget/Button;
move-result-object v0
return-object v0
.end method
.method public static f(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
.registers 3
sget v0, Lcom/spotify/android/paste/b;->b:I
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Landroid/widget/Button;
move-result-object v0
return-object v0
.end method
.method public static g(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/SpotifyIconView;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/SpotifyIconView;
move-result-object v0
return-object v0
.end method
.method public static h(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/SpotifyIconView;
.registers 3
sget v0, Lcom/spotify/android/paste/b;->D:I
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->b(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/SpotifyIconView;
move-result-object v0
return-object v0
.end method
.method public static i(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->c(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method public static j(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
.registers 3
sget v0, Lcom/spotify/android/paste/b;->z:I
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->c(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method public static k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
.registers 3
sget v0, Lcom/spotify/android/paste/b;->B:I
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->c(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method public static l(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;
.registers 3
sget v0, Lcom/spotify/android/paste/b;->A:I
invoke-static {p0, p1, v0}, Lcom/spotify/android/paste/widget/h;->c(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/spotify/android/paste/widget/ListItemView;
move-result-object v0
return-object v0
.end method
.method private static m(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
.registers 5
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/spotify/android/paste/d;->i:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
move-result-object v0
:cond_e
:try_start_e
invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->nextToken()I
move-result v1
const/4 v2, 0x2
if-ne v1, v2, :cond_e
invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
:try_end_18
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_1a
move-result-object v0
goto :goto_3
:catch_1a
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private static n(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
.registers 5
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/spotify/android/paste/d;->f:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
move-result-object v0
:cond_e
:try_start_e
invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->nextToken()I
move-result v1
const/4 v2, 0x2
if-ne v1, v2, :cond_e
invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
:try_end_18
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_1a
move-result-object v0
goto :goto_3
:catch_1a
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method