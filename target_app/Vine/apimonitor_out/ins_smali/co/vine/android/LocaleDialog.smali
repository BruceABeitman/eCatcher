.class public Lco/vine/android/LocaleDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "LocaleDialog.java"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field private mChanges:Z
.field private mLastSelected:I
.field private mLocaleOptions:Landroid/widget/RadioGroup;
.field private mLocales:Landroid/widget/Spinner;
.field private mLocalesAdapter:Landroid/widget/ArrayAdapter;
.field private mLocalesCodes:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V
return-void
.end method
.method static synthetic access$100(Lco/vine/android/LocaleDialog;)Landroid/widget/Spinner;
.registers 2
iget-object v0, p0, Lco/vine/android/LocaleDialog;->mLocales:Landroid/widget/Spinner;
return-object v0
.end method
.method static synthetic access$202(Lco/vine/android/LocaleDialog;Z)Z
.registers 2
iput-boolean p1, p0, Lco/vine/android/LocaleDialog;->mChanges:Z
return p1
.end method
.method private static isValidLocale(Ljava/util/Locale;)Ljava/lang/Boolean;
.registers 2
invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_24
invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_24
invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_24
const/4 v0, 0x1
:goto_1f
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
:cond_24
const/4 v0, 0x0
goto :goto_1f
.end method
.method static newInstance()Lco/vine/android/LocaleDialog;
.registers 1
new-instance v0, Lco/vine/android/LocaleDialog;
invoke-direct {v0}, Lco/vine/android/LocaleDialog;-><init>()V
return-object v0
.end method
.method public onCancel(Landroid/content/DialogInterface;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V
invoke-virtual {p0}, Lco/vine/android/LocaleDialog;->getDialog()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 14
const-string v1, " + Lco/vine/android/LocaleDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V
new-instance v9, Ljava/util/ArrayList;
invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;
move-result-object v1
if-eqz v1, :cond_57
new-instance v10, Lco/vine/android/LocaleDialog$LocaleComparator;
const/4 v11, 0x0
invoke-direct {v10, p0, v11}, Lco/vine/android/LocaleDialog$LocaleComparator;-><init>(Lco/vine/android/LocaleDialog;Lco/vine/android/LocaleDialog$1;)V
invoke-static {v1, v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
move-object v0, v1
array-length v6, v0
const/4 v4, 0x0
:goto_1f
if-ge v4, v6, :cond_57
aget-object v5, v0, v4
invoke-static {v5}, Lco/vine/android/LocaleDialog;->isValidLocale(Ljava/util/Locale;)Ljava/lang/Boolean;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
move-result v10
if-eqz v10, :cond_54
sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v5, v10}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " - "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_54
add-int/lit8 v4, v4, 0x1
goto :goto_1f
:cond_57
new-instance v3, Ljava/util/Locale;
const-string v10, "en"
const-string v11, "ss"
invoke-direct {v3, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "DEBUG - "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, " - "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v3, v11}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iput-object v8, p0, Lco/vine/android/LocaleDialog;->mLocalesCodes:Ljava/util/ArrayList;
new-instance v7, Landroid/widget/ArrayAdapter;
invoke-virtual {p0}, Lco/vine/android/LocaleDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v10
const v11, 0x1090008
invoke-direct {v7, v10, v11, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
const v10, 0x1090009
invoke-virtual {v7, v10}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V
iput-object v7, p0, Lco/vine/android/LocaleDialog;->mLocalesAdapter:Landroid/widget/ArrayAdapter;
const-string v1, " - Lco/vine/android/LocaleDialog; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 20
const v14, 0x7f030050
const/4 v15, 0x0
move-object/from16 v0, p1
move-object/from16 v1, p2
invoke-virtual {v0, v14, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v13
const v14, 0x7f0a0112
invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v12
check-cast v12, Landroid/widget/RadioButton;
const v14, 0x7f0a0113
invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/RadioButton;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/LocaleDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v14
invoke-static {v14}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v11
const-string v14, "pref_custom_locale_enabled"
const/4 v15, 0x0
invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v4
if-nez v4, :cond_c9
const/4 v14, 0x1
:goto_30
invoke-virtual {v12, v14}, Landroid/widget/RadioButton;->setChecked(Z)V
invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setChecked(Z)V
const v14, 0x7f0a0114
invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v10
check-cast v10, Landroid/widget/Spinner;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/LocaleDialog;->mLocalesAdapter:Landroid/widget/ArrayAdapter;
invoke-virtual {v10, v14}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
const-string v14, "pref_custom_locale"
invoke-interface {v11, v14}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z
move-result v14
if-eqz v14, :cond_94
const-string v14, "pref_custom_locale"
const-string v15, ""
invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v14, "pref_custom_locale_country"
const-string v15, ""
invoke-interface {v11, v14, v15}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v14
if-nez v14, :cond_94
const/4 v7, 0x0
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/LocaleDialog;->mLocalesCodes:Ljava/util/ArrayList;
invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_6d
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v14
if-eqz v14, :cond_94
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Ljava/util/Locale;
invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v14
invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v14
if-eqz v14, :cond_cc
invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v14
invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v14
if-eqz v14, :cond_cc
invoke-virtual {v10, v7}, Landroid/widget/Spinner;->setSelection(I)V
move-object/from16 v0, p0
iput v7, v0, Lco/vine/android/LocaleDialog;->mLastSelected:I
:cond_94
const v14, 0x7f0a0111
invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v9
check-cast v9, Landroid/widget/RadioGroup;
if-eqz v4, :cond_cf
const v14, 0x7f0a0113
invoke-virtual {v9, v14}, Landroid/widget/RadioGroup;->check(I)V
:goto_a5
new-instance v14, Lco/vine/android/LocaleDialog$1;
move-object/from16 v0, p0
invoke-direct {v14, v0}, Lco/vine/android/LocaleDialog$1;-><init>(Lco/vine/android/LocaleDialog;)V
invoke-virtual {v9, v14}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
invoke-virtual {v10, v4}, Landroid/widget/Spinner;->setEnabled(Z)V
move-object/from16 v0, p0
invoke-virtual {v10, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
move-object/from16 v0, p0
iput-object v10, v0, Lco/vine/android/LocaleDialog;->mLocales:Landroid/widget/Spinner;
move-object/from16 v0, p0
iput-object v9, v0, Lco/vine/android/LocaleDialog;->mLocaleOptions:Landroid/widget/RadioGroup;
invoke-virtual/range {p0 .. p0}, Lco/vine/android/LocaleDialog;->getDialog()Landroid/app/Dialog;
move-result-object v14
const-string v15, "Custom locales"
invoke-virtual {v14, v15}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V
return-object v13
:cond_c9
const/4 v14, 0x0
goto/16 :goto_30
:cond_cc
add-int/lit8 v7, v7, 0x1
goto :goto_6d
:cond_cf
const v14, 0x7f0a0112
invoke-virtual {v9, v14}, Landroid/widget/RadioGroup;->check(I)V
goto :goto_a5
.end method
.method public onDismiss(Landroid/content/DialogInterface;)V
.registers 13
invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V
iget-boolean v9, p0, Lco/vine/android/LocaleDialog;->mChanges:Z
if-eqz v9, :cond_32
iget-object v9, p0, Lco/vine/android/LocaleDialog;->mLocaleOptions:Landroid/widget/RadioGroup;
invoke-virtual {v9}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I
move-result v9
const v10, 0x7f0a0113
if-ne v9, v10, :cond_33
const/4 v1, 0x1
:goto_13
iget-object v9, p0, Lco/vine/android/LocaleDialog;->mLocales:Landroid/widget/Spinner;
invoke-virtual {v9}, Landroid/widget/Spinner;->getSelectedItemPosition()I
move-result v6
const/4 v4, 0x0
const/4 v8, 0x0
iget-object v9, p0, Lco/vine/android/LocaleDialog;->mLocalesCodes:Ljava/util/ArrayList;
invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_21
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-eqz v9, :cond_30
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/util/Locale;
if-ne v4, v6, :cond_35
move-object v8, v5
:cond_30
if-nez v8, :cond_38
:goto_32
:cond_32
return-void
:cond_33
const/4 v1, 0x0
goto :goto_13
:cond_35
add-int/lit8 v4, v4, 0x1
goto :goto_21
:cond_38
invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lco/vine/android/LocaleDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v9
invoke-static {v9}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v7
invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v9
const-string v10, "pref_custom_locale_enabled"
invoke-interface {v9, v10, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v9
const-string v10, "pref_custom_locale"
invoke-interface {v9, v10, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v9
const-string v10, "pref_custom_locale_country"
invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v9
invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
iget v9, p0, Lco/vine/android/LocaleDialog;->mLastSelected:I
if-eq v4, v9, :cond_32
invoke-virtual {p0}, Lco/vine/android/LocaleDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v9
invoke-static {v9}, Lco/vine/android/util/Util;->restartApp(Landroid/content/Context;)V
goto :goto_32
.end method
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/LocaleDialog; onItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/LocaleDialog;->mChanges:Z
const-string v1, " - Lco/vine/android/LocaleDialog; onItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onNothingSelected(Landroid/widget/AdapterView;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/LocaleDialog; onNothingSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lco/vine/android/LocaleDialog; onNothingSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method