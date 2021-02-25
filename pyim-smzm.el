;;; pyim-smzm.el --- Sanma(triple) Zhengma dict for pyim -*- lexical-binding: t -*-

;; Author: Yue Shi (Zhizhi)
;; Maintainer: Yuanchen Xie
;; Version: 0.0.1
;; Package-Requires: ((pyim "1.0"))
;; Homepage: github.com/p1uxtar/pyim-smzm
;; Keywords: Chinese, input-method, zhengma

;;; License:

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This is the Sanma(triple) Zhengma dict for based on pyim.

;; 这是 pyim 上三码郑码（至至）的词库文件。

;;; Code:

;;;###autoload
(defun pyim-smzmdict-enable ()
  "Add sanma(triple) zhengma dict to pyim."
  (interactive)
  (let* ((dir (file-name-directory
               (locate-library "pyim-smzm.el")))
         (file (concat dir "pyim-smzmdict.pyim")))
    (when (file-exists-p file)
      (if (featurep 'pyim)
          (pyim-extra-dicts-add-dict
           `(:name "smzmdict-elpa" :file ,file :elpa t))
        (message "pyim 没有安装，pyim-wbdict 启用失败。")))))

;; * Footer

(provide 'pyim-smzm)

;;; pyim-smzm.el ends here
