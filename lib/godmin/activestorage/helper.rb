# frozen_string_literal: true

module Godmin
  module Activestorage
    module Helper
      def uploader(attachment, preview: false, remove: true)
        @template.render partial: "godmin/activestorage/uploader", locals: {
          f: self, attachment: attachment, preview: preview, remove: remove
        }
      end
    end
  end

  FormBuilders::FormBuilder.send(:include, Activestorage::Helper)
end
