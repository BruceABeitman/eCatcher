.class  Landroid/support/v7/widget/l;
.super Landroid/support/v4/widget/ResourceCursorAdapter;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field static final a:I = 0x0
.field static final b:I = 0x1
.field static final c:I = 0x2
.field static final d:I = -0x1
.field private static final e:Z = false
.field private static final f:Ljava/lang/String; = "SuggestionsAdapter"
.field private static final g:I = 0x32
.field private h:Landroid/app/SearchManager;
.field private i:Landroid/support/v7/widget/SearchView;
.field private j:Landroid/app/SearchableInfo;
.field private k:Landroid/content/Context;
.field private l:Ljava/util/WeakHashMap;
.field private m:Z
.field private n:I
.field private o:Landroid/content/res/ColorStateList;
.field private p:I
.field private q:I
.field private r:I
.field private s:I
.field private t:I
.field private u:I
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V
.registers 9
const/4 v3, 0x1
const/4 v2, -0x1
sget v0, Landroid/support/v7/a/k;->abc_search_dropdown_item_icons_2line:I
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1, v3}, Landroid/support/v4/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v7/widget/l;->m:Z
iput v3, p0, Landroid/support/v7/widget/l;->n:I
iput v2, p0, Landroid/support/v7/widget/l;->p:I
iput v2, p0, Landroid/support/v7/widget/l;->q:I
iput v2, p0, Landroid/support/v7/widget/l;->r:I
iput v2, p0, Landroid/support/v7/widget/l;->s:I
iput v2, p0, Landroid/support/v7/widget/l;->t:I
iput v2, p0, Landroid/support/v7/widget/l;->u:I
iget-object v0, p0, Landroid/support/v7/widget/l;->mContext:Landroid/content/Context;
const-string v1, "search"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/SearchManager;
iput-object v0, p0, Landroid/support/v7/widget/l;->h:Landroid/app/SearchManager;
iput-object p2, p0, Landroid/support/v7/widget/l;->i:Landroid/support/v7/widget/SearchView;
iput-object p3, p0, Landroid/support/v7/widget/l;->j:Landroid/app/SearchableInfo;
iput-object p1, p0, Landroid/support/v7/widget/l;->k:Landroid/content/Context;
iput-object p4, p0, Landroid/support/v7/widget/l;->l:Ljava/util/WeakHashMap;
return-void
.end method
.method private a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
.registers 6
const/4 v1, 0x0
invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Landroid/support/v7/widget/l;->l:Ljava/util/WeakHashMap;
invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_24
iget-object v0, p0, Landroid/support/v7/widget/l;->l:Ljava/util/WeakHashMap;
invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;
if-nez v0, :cond_19
move-object v0, v1
:goto_18
return-object v0
:cond_19
iget-object v1, p0, Landroid/support/v7/widget/l;->k:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_18
:cond_24
invoke-direct {p0, p1}, Landroid/support/v7/widget/l;->b(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_30
:goto_2a
iget-object v3, p0, Landroid/support/v7/widget/l;->l:Ljava/util/WeakHashMap;
invoke-virtual {v3, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_18
:cond_30
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v1
goto :goto_2a
.end method
.method private a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.registers 6
const/4 v1, 0x0
if-eqz p1, :cond_11
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_11
const-string v0, "0"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_13
:cond_11
move-object v0, v1
:cond_12
:goto_12
return-object v0
:cond_13
:try_start_13
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "android.resource://"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v3, p0, Landroid/support/v7/widget/l;->k:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "/"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v3}, Landroid/support/v7/widget/l;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_12
iget-object v0, p0, Landroid/support/v7/widget/l;->k:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-direct {p0, v3, v0}, Landroid/support/v7/widget/l;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
:try_end_4d
.catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_4d} :catch_4e
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_13 .. :try_end_4d} :catch_61
goto :goto_12
:catch_4e
move-exception v0
invoke-direct {p0, p1}, Landroid/support/v7/widget/l;->b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_12
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->b(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/l;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
goto :goto_12
:catch_61
move-exception v0
const-string v0, "SuggestionsAdapter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Icon resource not found: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
move-object v0, v1
goto :goto_12
.end method
.method private a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
.registers 9
const/4 v1, 0x0
const/4 v2, 0x0
iget-object v0, p0, Landroid/support/v7/widget/l;->o:Landroid/content/res/ColorStateList;
if-nez v0, :cond_25
new-instance v0, Landroid/util/TypedValue;
invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V
iget-object v3, p0, Landroid/support/v7/widget/l;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v3
sget v4, Landroid/support/v7/a/d;->textColorSearchUrl:I
const/4 v5, 0x1
invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
iget-object v3, p0, Landroid/support/v7/widget/l;->mContext:Landroid/content/Context;
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v3
iget v0, v0, Landroid/util/TypedValue;->resourceId:I
invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;
move-result-object v0
iput-object v0, p0, Landroid/support/v7/widget/l;->o:Landroid/content/res/ColorStateList;
:cond_25
new-instance v6, Landroid/text/SpannableString;
invoke-direct {v6, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
new-instance v0, Landroid/text/style/TextAppearanceSpan;
iget-object v4, p0, Landroid/support/v7/widget/l;->o:Landroid/content/res/ColorStateList;
move v3, v2
move-object v5, v1
invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V
invoke-interface {p1}, Ljava/lang/CharSequence;->length()I
move-result v1
const/16 v3, 0x21
invoke-virtual {v6, v0, v2, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
return-object v6
.end method
.method private static a(Landroid/database/Cursor;I)Ljava/lang/String;
.registers 6
const/4 v0, 0x0
const/4 v1, -0x1
if-ne p1, v1, :cond_5
:goto_4
return-object v0
:try_start_5
:cond_5
invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
:try_end_8
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_a
move-result-object v0
goto :goto_4
:catch_a
move-exception v1
const-string v2, "SuggestionsAdapter"
const-string v3, "unexpected error retrieving valid column from cursor, did the remote process die?"
invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_4
.end method
.method public static a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
invoke-static {p0, v0}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private a(Landroid/database/Cursor;)V
.registers 4
if-eqz p1, :cond_11
invoke-interface {p1}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;
move-result-object v0
:goto_6
if-eqz v0, :cond_10
const-string v1, "in_progress"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
:cond_10
return-void
:cond_11
const/4 v0, 0x0
goto :goto_6
.end method
.method private a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
.registers 6
const/4 v1, 0x0
invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
if-nez p2, :cond_a
invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_9
return-void
:cond_a
invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {p2, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
const/4 v0, 0x1
invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
goto :goto_9
.end method
.method private a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
.registers 4
invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_f
const/16 v0, 0x8
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
:goto_e
return-void
:cond_f
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_e
.end method
.method private a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
.registers 5
if-eqz p2, :cond_b
iget-object v0, p0, Landroid/support/v7/widget/l;->l:Ljava/util/WeakHashMap;
invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_b
return-void
.end method
.method private b(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v7/widget/l;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const/16 v2, 0x80
:try_start_9
invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
:try_end_c
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_c} :catch_14
move-result-object v2
invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->getIconResource()I
move-result v3
if-nez v3, :cond_1f
:goto_13
return-object v0
:catch_14
move-exception v1
const-string v2, "SuggestionsAdapter"
invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_13
:cond_1f
invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
move-result-object v4
iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
invoke-virtual {v1, v4, v3, v2}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
move-result-object v1
if-nez v1, :cond_52
const-string v1, "SuggestionsAdapter"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Invalid icon resource "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_13
:cond_52
move-object v0, v1
goto :goto_13
.end method
.method private b(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
.registers 4
iget v0, p0, Landroid/support/v7/widget/l;->s:I
const/4 v1, -0x1
if-ne v0, v1, :cond_7
const/4 v0, 0x0
:goto_6
:cond_6
return-object v0
:cond_7
iget v0, p0, Landroid/support/v7/widget/l;->s:I
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-nez v0, :cond_6
invoke-direct {p0, p1}, Landroid/support/v7/widget/l;->d(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_6
.end method
.method private b(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
.registers 8
const/4 v1, 0x0
:try_start_1
invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;
move-result-object v0
const-string v2, "android.resource"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
:try_end_a
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_a} :catch_2c
move-result v0
if-eqz v0, :cond_55
:try_start_d
invoke-virtual {p0, p1}, Landroid/support/v7/widget/l;->a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
:try_end_10
.catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_10} :catch_12
.catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_10} :catch_2c
move-result-object v0
:goto_11
return-object v0
:catch_12
move-exception v0
:try_start_13
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Resource does not exist: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_2c
.catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_2c} :catch_2c
:catch_2c
move-exception v0
const-string v2, "SuggestionsAdapter"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Icon not found: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
move-object v0, v1
goto :goto_11
:cond_55
:try_start_55
iget-object v0, p0, Landroid/support/v7/widget/l;->k:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v2
if-nez v2, :cond_7a
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Failed to open "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_7a
.catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_7a} :catch_2c
:cond_7a
const/4 v0, 0x0
:try_start_7b
invoke-static {v2, v0}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
:try_end_7e
.catchall {:try_start_7b .. :try_end_7e} :catchall_9e
move-result-object v0
:try_start_7f
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_82
.catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83
.catch Ljava/io/FileNotFoundException; {:try_start_7f .. :try_end_82} :catch_2c
goto :goto_11
:catch_83
move-exception v2
:try_start_84
const-string v3, "SuggestionsAdapter"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error closing icon stream for "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_9c
.catch Ljava/io/FileNotFoundException; {:try_start_84 .. :try_end_9c} :catch_2c
goto/16 :goto_11
:catchall_9e
move-exception v0
:try_start_9f
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:try_end_a2
.catch Ljava/io/IOException; {:try_start_9f .. :try_end_a2} :catch_a3
.catch Ljava/io/FileNotFoundException; {:try_start_9f .. :try_end_a2} :catch_2c
:try_start_a2
:goto_a2
throw v0
:catch_a3
move-exception v2
const-string v3, "SuggestionsAdapter"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Error closing icon stream for "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_bc
.catch Ljava/io/FileNotFoundException; {:try_start_a2 .. :try_end_bc} :catch_2c
goto :goto_a2
.end method
.method private b(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/l;->l:Ljava/util/WeakHashMap;
invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_b
.end method
.method private c(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
.registers 4
iget v0, p0, Landroid/support/v7/widget/l;->t:I
const/4 v1, -0x1
if-ne v0, v1, :cond_7
const/4 v0, 0x0
:goto_6
return-object v0
:cond_7
iget v0, p0, Landroid/support/v7/widget/l;->t:I
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_6
.end method
.method private d(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
.registers 3
iget-object v0, p0, Landroid/support/v7/widget/l;->j:Landroid/app/SearchableInfo;
invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->a(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_d
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Landroid/support/v7/widget/l;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
move-result-object v0
goto :goto_c
.end method
.method public a()I
.registers 2
iget v0, p0, Landroid/support/v7/widget/l;->n:I
return v0
.end method
.method  a(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
.registers 10
const/4 v2, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return-object v2
:cond_4
invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3
new-instance v1, Landroid/net/Uri$Builder;
invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V
const-string v3, "content"
invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v0
invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestPath()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_2e
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
:cond_2e
const-string v1, "search_suggest_query"
invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSuggestSelection()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_5a
const/4 v1, 0x1
new-array v4, v1, [Ljava/lang/String;
const/4 v1, 0x0
aput-object p2, v4, v1
:goto_3f
if-lez p3, :cond_4a
const-string v1, "limit"
invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v0, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
:cond_4a
invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v1
iget-object v0, p0, Landroid/support/v7/widget/l;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
move-object v5, v2
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v2
goto :goto_3
:cond_5a
invoke-virtual {v0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-object v4, v2
goto :goto_3f
.end method
.method  a(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
.registers 9
const/4 v6, 0x1
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_25
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No authority: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_25
:try_start_25
iget-object v0, p0, Landroid/support/v7/widget/l;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
:try_end_2e
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_25 .. :try_end_2e} :catch_4e
move-result-object v3
invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v1
if-nez v1, :cond_68
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No path: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:catch_4e
move-exception v0
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No package found for authority: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_68
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
if-ne v0, v6, :cond_ae
const/4 v0, 0x0
:try_start_6f
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_78
.catch Ljava/lang/NumberFormatException; {:try_start_6f .. :try_end_78} :catch_94
move-result v0
:goto_79
if-nez v0, :cond_db
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No resource found for: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:catch_94
move-exception v0
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Single path segment is not a resource ID: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_ae
const/4 v4, 0x2
if-ne v0, v4, :cond_c2
invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
move-result v0
goto :goto_79
:cond_c2
new-instance v0, Ljava/io/FileNotFoundException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "More than two path segments: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v0
:cond_db
invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
return-object v0
.end method
.method public a(I)V
.registers 2
iput p1, p0, Landroid/support/v7/widget/l;->n:I
return-void
.end method
.method public b()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Landroid/support/v7/widget/l;->changeCursor(Landroid/database/Cursor;)V
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v7/widget/l;->m:Z
return-void
.end method
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 13
const/16 v8, 0x8
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v2, 0x0
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/m;
iget v1, p0, Landroid/support/v7/widget/l;->u:I
const/4 v3, -0x1
if-eq v1, v3, :cond_a7
iget v1, p0, Landroid/support/v7/widget/l;->u:I
invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
:goto_16
iget-object v3, v0, Landroid/support/v7/widget/m;->a:Landroid/widget/TextView;
if-eqz v3, :cond_25
iget v3, p0, Landroid/support/v7/widget/l;->p:I
invoke-static {p3, v3}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;I)Ljava/lang/String;
move-result-object v3
iget-object v4, v0, Landroid/support/v7/widget/m;->a:Landroid/widget/TextView;
invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
:cond_25
iget-object v3, v0, Landroid/support/v7/widget/m;->b:Landroid/widget/TextView;
if-eqz v3, :cond_4e
iget v3, p0, Landroid/support/v7/widget/l;->r:I
invoke-static {p3, v3}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;I)Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_8b
invoke-direct {p0, v3}, Landroid/support/v7/widget/l;->a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
move-result-object v3
:goto_35
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_92
iget-object v4, v0, Landroid/support/v7/widget/m;->a:Landroid/widget/TextView;
if-eqz v4, :cond_49
iget-object v4, v0, Landroid/support/v7/widget/m;->a:Landroid/widget/TextView;
invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v4, v0, Landroid/support/v7/widget/m;->a:Landroid/widget/TextView;
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setMaxLines(I)V
:goto_49
:cond_49
iget-object v4, v0, Landroid/support/v7/widget/m;->b:Landroid/widget/TextView;
invoke-direct {p0, v4, v3}, Landroid/support/v7/widget/l;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
:cond_4e
iget-object v3, v0, Landroid/support/v7/widget/m;->c:Landroid/widget/ImageView;
if-eqz v3, :cond_5c
iget-object v3, v0, Landroid/support/v7/widget/m;->c:Landroid/widget/ImageView;
invoke-direct {p0, p3}, Landroid/support/v7/widget/l;->b(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
move-result-object v4
const/4 v5, 0x4
invoke-direct {p0, v3, v4, v5}, Landroid/support/v7/widget/l;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
:cond_5c
iget-object v3, v0, Landroid/support/v7/widget/m;->d:Landroid/widget/ImageView;
if-eqz v3, :cond_69
iget-object v3, v0, Landroid/support/v7/widget/m;->d:Landroid/widget/ImageView;
invoke-direct {p0, p3}, Landroid/support/v7/widget/l;->c(Landroid/database/Cursor;)Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-direct {p0, v3, v4, v8}, Landroid/support/v7/widget/l;->a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;I)V
:cond_69
iget v3, p0, Landroid/support/v7/widget/l;->n:I
if-eq v3, v7, :cond_75
iget v3, p0, Landroid/support/v7/widget/l;->n:I
if-ne v3, v6, :cond_a1
and-int/lit8 v1, v1, 0x1
if-eqz v1, :cond_a1
:cond_75
iget-object v1, v0, Landroid/support/v7/widget/m;->e:Landroid/widget/ImageView;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, v0, Landroid/support/v7/widget/m;->e:Landroid/widget/ImageView;
iget-object v2, v0, Landroid/support/v7/widget/m;->a:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
iget-object v0, v0, Landroid/support/v7/widget/m;->e:Landroid/widget/ImageView;
invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_8a
return-void
:cond_8b
iget v3, p0, Landroid/support/v7/widget/l;->q:I
invoke-static {p3, v3}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;I)Ljava/lang/String;
move-result-object v3
goto :goto_35
:cond_92
iget-object v4, v0, Landroid/support/v7/widget/m;->a:Landroid/widget/TextView;
if-eqz v4, :cond_49
iget-object v4, v0, Landroid/support/v7/widget/m;->a:Landroid/widget/TextView;
invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v4, v0, Landroid/support/v7/widget/m;->a:Landroid/widget/TextView;
invoke-virtual {v4, v6}, Landroid/widget/TextView;->setMaxLines(I)V
goto :goto_49
:cond_a1
iget-object v0, v0, Landroid/support/v7/widget/m;->e:Landroid/widget/ImageView;
invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_8a
:cond_a7
move v1, v2
goto/16 :goto_16
.end method
.method public changeCursor(Landroid/database/Cursor;)V
.registers 5
iget-boolean v0, p0, Landroid/support/v7/widget/l;->m:Z
if-eqz v0, :cond_11
const-string v0, "SuggestionsAdapter"
const-string v1, "Tried to change cursor after adapter was closed."
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
if-eqz p1, :cond_10
invoke-interface {p1}, Landroid/database/Cursor;->close()V
:cond_10
:goto_10
return-void
:cond_11
:try_start_11
invoke-super {p0, p1}, Landroid/support/v4/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V
if-eqz p1, :cond_10
const-string v0, "suggest_text_1"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
iput v0, p0, Landroid/support/v7/widget/l;->p:I
const-string v0, "suggest_text_2"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
iput v0, p0, Landroid/support/v7/widget/l;->q:I
const-string v0, "suggest_text_2_url"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
iput v0, p0, Landroid/support/v7/widget/l;->r:I
const-string v0, "suggest_icon_1"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
iput v0, p0, Landroid/support/v7/widget/l;->s:I
const-string v0, "suggest_icon_2"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
iput v0, p0, Landroid/support/v7/widget/l;->t:I
const-string v0, "suggest_flags"
invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
move-result v0
iput v0, p0, Landroid/support/v7/widget/l;->u:I
:try_end_46
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_46} :catch_47
goto :goto_10
:catch_47
move-exception v0
const-string v1, "SuggestionsAdapter"
const-string v2, "error changing cursor and caching columns"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_10
.end method
.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.registers 4
const/4 v0, 0x0
if-nez p1, :cond_4
:cond_3
:goto_3
return-object v0
:cond_4
const-string v1, "suggest_intent_query"
invoke-static {p1, v1}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_e
move-object v0, v1
goto :goto_3
:cond_e
iget-object v1, p0, Landroid/support/v7/widget/l;->j:Landroid/app/SearchableInfo;
invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromData()Z
move-result v1
if-eqz v1, :cond_20
const-string v1, "suggest_intent_data"
invoke-static {p1, v1}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_20
move-object v0, v1
goto :goto_3
:cond_20
iget-object v1, p0, Landroid/support/v7/widget/l;->j:Landroid/app/SearchableInfo;
invoke-virtual {v1}, Landroid/app/SearchableInfo;->shouldRewriteQueryFromText()Z
move-result v1
if-eqz v1, :cond_3
const-string v1, "suggest_text_1"
invoke-static {p1, v1}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_3
move-object v0, v1
goto :goto_3
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
:try_start_0
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
:try_end_3
.catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
:goto_4
return-object v0
:catch_5
move-exception v2
const-string v0, "SuggestionsAdapter"
const-string v1, "Search suggestions cursor threw exception."
invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v0, p0, Landroid/support/v7/widget/l;->mContext:Landroid/content/Context;
iget-object v1, p0, Landroid/support/v7/widget/l;->mCursor:Landroid/database/Cursor;
invoke-virtual {p0, v0, v1, p3}, Landroid/support/v7/widget/l;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_26
invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v7/widget/m;
iget-object v0, v0, Landroid/support/v7/widget/m;->a:Landroid/widget/TextView;
invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_26
move-object v0, v1
goto :goto_4
.end method
.method public hasStableIds()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
new-instance v1, Landroid/support/v7/widget/m;
invoke-direct {v1, v0}, Landroid/support/v7/widget/m;-><init>(Landroid/view/View;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v0
.end method
.method public notifyDataSetChanged()V
.registers 2
invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetChanged()V
invoke-virtual {p0}, Landroid/support/v7/widget/l;->getCursor()Landroid/database/Cursor;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;)V
return-void
.end method
.method public notifyDataSetInvalidated()V
.registers 2
invoke-super {p0}, Landroid/support/v4/widget/ResourceCursorAdapter;->notifyDataSetInvalidated()V
invoke-virtual {p0}, Landroid/support/v7/widget/l;->getCursor()Landroid/database/Cursor;
move-result-object v0
invoke-direct {p0, v0}, Landroid/support/v7/widget/l;->a(Landroid/database/Cursor;)V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v7/widget/l; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/CharSequence;
if-eqz v1, :cond_f
iget-object v1, p0, Landroid/support/v7/widget/l;->i:Landroid/support/v7/widget/SearchView;
check-cast v0, Ljava/lang/CharSequence;
invoke-virtual {v1, v0}, Landroid/support/v7/widget/SearchView;->a(Ljava/lang/CharSequence;)V
:cond_f
const-string v1, " - Landroid/support/v7/widget/l; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
.registers 6
const/4 v1, 0x0
if-nez p1, :cond_17
const-string v0, ""
:goto_5
iget-object v2, p0, Landroid/support/v7/widget/l;->i:Landroid/support/v7/widget/SearchView;
invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getVisibility()I
move-result v2
if-nez v2, :cond_15
iget-object v2, p0, Landroid/support/v7/widget/l;->i:Landroid/support/v7/widget/SearchView;
invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getWindowVisibility()I
move-result v2
if-eqz v2, :cond_1c
:cond_15
move-object v0, v1
:goto_16
return-object v0
:cond_17
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5
:try_start_1c
:cond_1c
iget-object v2, p0, Landroid/support/v7/widget/l;->j:Landroid/app/SearchableInfo;
const/16 v3, 0x32
invoke-virtual {p0, v2, v0, v3}, Landroid/support/v7/widget/l;->a(Landroid/app/SearchableInfo;Ljava/lang/String;I)Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_32
invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
:try_end_29
.catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_29} :catch_2a
goto :goto_16
:catch_2a
move-exception v0
const-string v2, "SuggestionsAdapter"
const-string v3, "Search suggestions query threw an exception."
invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_32
move-object v0, v1
goto :goto_16
.end method